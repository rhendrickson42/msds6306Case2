
# question3 ---------------------------------------------------------------

get_Wikipedia_HDI_tables <- function() {
  library(here)
  library(rvest)
  library(dplyr)
  library(tidyr)
  
  URL <- "https://en.wikipedia.org/wiki/List_of_countries_by_Human_Development_Index#Complete_list_of_countries"
  web_html <- read_html(URL)

  # table1 = very high human develoopment
  # table2 = high human develoopment
  # table3 = medium human development
  # table4 = low human development
  
  # t1 rows to remove: 1,2,3, 30,31
  new_table1 <- get_TableFromWikipedia_html(web_html, table_index = 3, rows2remove = c(1:3, 30:31), cols2keep = c(3:4))
  new_table2 <- get_TableFromWikipedia_html(web_html, table_index = 6, rows2remove = c(1:3, 32:33,56), cols2keep = c(3:4))
  new_table3 <- get_TableFromWikipedia_html(web_html, table_index = 9, rows2remove = c(1:3, 24:25), cols2keep = c(3:4))
  new_table4 <- get_TableFromWikipedia_html(web_html, table_index = 12, rows2remove = c(1:3, 25:26), cols2keep = c(3:4))
  
  new_table1 <- fixup_HDI_table(new_table1, "very high human development")
  new_table2 <- fixup_HDI_table(new_table2, "high human development")
  new_table3 <- fixup_HDI_table(new_table3, "medium human development")
  new_table4 <- fixup_HDI_table(new_table4, "low human development")
  
  merged_df <- rbind(new_table1, new_table2, new_table3, new_table4)
  row.names(merged_df) <- 1:nrow(merged_df)
  
  # 3a 3b output tables
  output_directory <- here("outputdata")
  dir.create(output_directory)
  write.table(new_table1, paste0(output_directory, "/HDI_veryhigh.csv"), sep="," ,row.names=FALSE)
  write.table(new_table2, paste0(output_directory, "/HDI_high.csv"), sep="," ,row.names=FALSE)
  write.table(new_table3, paste0(output_directory, "/HDI_medium.csv"), sep="," ,row.names=FALSE)
  write.table(new_table4, paste0(output_directory, "/HDI_low.csv"), sep="," ,row.names=FALSE)
  write.table( merged_df, paste0(output_directory, "/HDI_By_Countries.csv"), sep="," ,row.names=FALSE)

  return(list(merged_df, new_table1, new_table2, new_table3, new_table4))  
}

# ---- local routines

# returns a table from wikipedia page html
get_TableFromWikipedia_html <- function(web_html, table_index, rows2remove, cols2keep) {
  tables <- web_html %>%
    html_nodes("table") %>% 
    .[[table_index]] %>% 
    html_table(fill = TRUE) %>%
    # remove some rows, keep some columns
    .[-rows2remove, cols2keep] 
  return(tables)
}

# fix table add new column for category name
fixup_HDI_table <- function(df_tofix, hdi_category_name) {
  row.names(df_tofix) <- 1:nrow(df_tofix)
  colnames(df_tofix) <- c("Country","HDI")
  df_tofix$HDI_Category <- hdi_category_name
  return(df_tofix)
}

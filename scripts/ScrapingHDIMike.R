library("rvest")                        ## will need rvest for most of this

URL <- "https://en.wikipedia.org/wiki/List_of_countries_by_Human_Development_Index#Complete_list_of_countries"
html <- read_html(URL)                  ## reads the webpage

## there are 8 tables on this page, but each category (very high, high, medium, low) has 1 
## bigger table that includes 2 smaller tables in them, so you can shrink it into 4 tables

## you can use [[4]] and [[5]] instead of [[3]], [[7]] and [[8]] instead of [[6]], etc.
## using 3 instead of 4/5 made the last line of code slightly more complicated, but has less tables

## very high human development
table1 <- html %>%
  html_nodes("table") %>%               ## finds all the tables
  .[[3]] %>%                            ## decides which one of the tables
  html_table(fill=TRUE) %>%             ## puts it in a proper df format, needed fill=TRUE to fill it out properly
  .[-c(1,2,3,30,31),c(3,4)]             ## removes non-observation rows, and unwanted columns

## high human development
table2 <- html %>%
  html_nodes("table") %>%
  .[[6]] %>%
  html_table(fill=TRUE) %>%
  .[-c(1,2,3,32,33),c(3,4)]

## medium human development
table3 <- html %>%
  html_nodes("table") %>%
  .[[9]] %>%
  html_table(fill=TRUE) %>%
  .[-c(1,2,3,24,25),c(3,4)]

## low human development
table4 <- html %>%
  html_nodes("table") %>%
  .[[12]] %>%
  html_table(fill=TRUE) %>%
  .[-c(1,2,3,25,26),c(3,4)]

## make a new column that describes the human devlopment
table1$X5 <- "very high"
table2$X5 <- "high"
table3$X5 <- "medium"
table4$X5 <- "low"

## combine the 4 tables into 1, renumber the rows and rename the columns
all <- rbind(table1,table2,table3,table4)
row.names(all) <- 1:nrow(all)                   ## don't need this for the csv, I just prefer prettier dfs
colnames(all) <- c("Country","HDI","HumanDev")

## rename more appropriately for later use, and write to a csv
HDIbyCountry <- all
write.table(HDIbyCountry,sep=",","HDIbyCountry.csv",row.names=FALSE)

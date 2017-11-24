library("rvest")
library("dplyr")
library("tidyr")

URL <- "https://en.wikipedia.org/wiki/List_of_countries_by_Human_Development_Index#Complete_list_of_countries"
html <- read_html(URL)

for(i in 1:6){
  k = i + 3
  table[i] <- html %>%
    html_nodes("table") %>%
    .[[4]] %>%
    html_table(fill=TRUE) %>%
    .[-1,c(3,4)]
}

table1 <- html %>%
  html_nodes("table") %>%
  .[[3]] %>%
  html_table(fill=TRUE) %>%
  .[-c(1,2,3,30,31),c(3,4)]

table2 <- html %>%
  html_nodes("table") %>%
  .[[6]] %>%
  html_table(fill=TRUE) %>%
  .[-c(1,2,3,32,33),c(3,4)]

table3 <- html %>%
  html_nodes("table") %>%
  .[[9]] %>%
  html_table(fill=TRUE) %>%
  .[-c(1,2,3,24,25),c(3,4)]

table4 <- html %>%
  html_nodes("table") %>%
  .[[12]] %>%
  html_table(fill=TRUE) %>%
  .[-c(1,2,3,25,26),c(3,4)]

all <- rbind(table1,table2,table3,table4)
row.names(all) <- 1:nrow(all)
colnames(all) <- c("Country","HDI")

HDIbyCountry <- all
write.csv(HDIbyCountry,"HDIbyCountry.csv")

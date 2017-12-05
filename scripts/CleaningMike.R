library(here)
procrastination_file_name <- here("data", "Procrastination.csv")
hdi_by_country_file <- here("data", "HDIbyCountry.csv")
cleaned_mike_file <- here("data", "cleaned_mike_data_file.csv")

df <- read.csv(procrastination_file_name, header=TRUE, stringsAsFactors = FALSE)

cnamesOld <- colnames(df)        ## save column names if we need later
test <- df    ## temp df for testing with

## 2A
dim(df)       ## 61 variables with 4107 observations

colnames(test)[1] <- "Age"
test <- test[ test$Age >= 18 , ]       ## 4A, remove underaged observation
row.names(test) <- 1:nrow(test)        ## renumber rows

## 2B

## separated the columns into groups to make it easier to count
## first 14, DP questions, AIP Qs, GP Qs, SWLS Qs, and last 2
cn0114 <- c("Age","Gender","Kids","Education","WorkStatus","AnnualIncome","CurrentOccu"
        ,"CurJobYears","CurJobMonths","CommunitySize","CountryOfRes","MaritalStatus"
        ,"Sons","Daughters")          
cn1519 <- c("DP1","DP2","DP3","DP4","DP5")
cn2034 <- c("AIP1","AIP2","AIP3","AIP4","AIP5","AIP6","AIP7","AIP8",
            "AIP9","AIP10","AIP11","AIP12","AIP13","AIP14","AIP15")
cn3554 <- c("GP1","GP2","GP3","GP4","GP5","GP6","GP7","GP8","GP9",
            "GP10","GP11","GP12","GP13","GP14","GP15","GP16","GP17",
            "GP18","GP19","GP20")                        
cn5559 <- c("SWLS1","SWLS2","SWLS3","SWLS4","SWLS5")
cn6061 <- c("YouProcast","OthersThinkU")

cnamesNew <- c(cn0114,cn1519,cn2034,cn3554,cn5559,cn6061)
colnames(test) <- cnamesNew   ## change column names

## Both sets of names side by side, may want this for the codebook
ColNamesCorrelation <- data.frame( OldNames = cnamesOld, NewNames = cnamesNew   )   

## 2C

## Clean columns one by one
## Age, Daughters, Annual Income, Current Job (in months) look good already.

## group the 'bad' observations as "Other" for categorical variables, NA for numeric
test$Gender[ test$Gender=="" | is.na(test$Gender) ] <- "Other"
test$Education[ test$Education=="" | is.na(test$Education)  ] <- "Other"
test$WorkStatus[ test$WorkStatus=="" | is.na(test$WorkStatus) ] <- "Other"
test$CurrentOccu[ test$CurrentOccu=="" | is.na(test$CurrentOccu) |
                    test$CurrentOccu=="na" | test$CurrentOccu=="0" ] <- "other"
test$CurrentOccu <- tolower(test$CurrentOccu)
test$CurrentOccu <- trimws(test$CurrentOccu)
test$CommunitySize[ test$CommunitySize=="" | test$CommunitySize=="8" | is.na(test$CommunitySize) ] <- "Other"
## 2C iii
test$CountryOfRes[ test$CountryOfRes=="0" | is.na(test$CountryOfRes) | test$CountryOfRes=="" ] <- "Other"
test$MaritalStatus[ is.na(test$MaritalStatus) | test$MaritalStatus=="" ] <- "Other"

## 2C ii
## change "Male" sons to 1, change "Female" sons to 2
test$Sons[ test$Sons=="Male"] <- 1
test$Sons[ test$Sons=="Female"] <- 2
test$Sons<- as.integer(test$Sons)      ## reclassify to integer
### 2C i
test$CurJobYears <- round(test$CurJobYears )
test$CurJobYears[ test$CurJobYears>50 ] <- NA

## for when we want to dive into the current occupations list to clean it up a little
## allOccu <- unique(test$CurrentOccu)
## allOccu[ order(allOccu) ]

## 2E
## find the means of each of the procrastination question groups
test$DPMean <- rowMeans( test[,c(15,19)]  )
test$AIPMean <- rowMeans( test[,c(20:34)] )
test$GPMean <- rowMeans( test[,c(35:54)] )
test$SWLSMean <- rowMeans( test[,c(55:59)] )


## merge the original df with the hdi df
HDI <- read.csv(hdi_by_country_file, stringsAsFactors = FALSE)

## make sure the column you merge have the same name
colnames(HDI)[1] <- "CountryOfRes"

## create a new row for HDI that has "Other" as it's country, since that's in the original df
HDI[nrow(HDI) + 1, ] = c("Other",NA,"none")

test2 <- merge(test,HDI,by="CountryOfRes")    

dim(test2)
dim(test)         ## I lost 4107 - 40175 = 32 observations

cleaned <- test
write.csv(cleaned, cleaned_mike_file)


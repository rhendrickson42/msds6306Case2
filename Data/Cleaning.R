df <- read.csv("~/Documents/msds6306Case2/Data/Procrastination.csv", header=TRUE, stringsAsFactors = FALSE)

df <- df[ df$Age >= 18 , ]    ## remove underaged observation
row.names(test) <- 1:nrow(test)        ## renumber rows
cnamesOld <- colnames(df)        ## save column names if we need later

test <- df    ## temp df for working with


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

## Both sets of names side by side, will want this for the codebook
ColNamesCorrelation <- data.frame( OldNames = cnamesOld, NewNames = cnamesNew   )   

## Age, Daughters look good already.

## group the 'bad' observations as "Other" for categorical variables, NA for numeric
test$Gender[ test$Gender=="" | is.na(test$Gender) ] <- "Other"
test$CountryOfRes[ test$CountryOfRes=="0" | is.na(test$CountryOfRes) | test$CountryOfRes=="" ] <- "Other"
test$Education[ test$Education=="" | is.na(test$Education)  ] <- "Other"
test$WorkStatus[ test$WorkStatus=="" | is.na(test$WorkStatus) ] <- "Other"

test$Sons[ test$Sons=="Male" | test$Sons=="Female" ] <- NA 
test$Sons<- as.numeric(test$Sons)

unique(test$WorkStatus)
unique(test$Education)

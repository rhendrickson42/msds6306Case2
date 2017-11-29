ibrary(knitr)
library(ggplot2)
library(dplyr)
df <- read.csv("~/Documents/CleanedMike.csv")
View(df)
hdi <- read.csv("~/Documents/HDIbyCountry.csv")
colnames(hdi)[1] = "CountryOfRes"    ## need column names to match to merge


## may want to make a function for this

## find the mean of each type per country
CountryMeanDP <- df %>% group_by(CountryOfRes) %>% summarise(meanDP = mean(DPMean, na.rm=TRUE))
CountryMeanAIP <- df %>% group_by(CountryOfRes) %>% summarise(meanAIP = mean(AIPMean, na.rm=TRUE))
CountryMeanGP <- df %>% group_by(CountryOfRes) %>% summarise(meanGP = mean(GPMean, na.rm=TRUE))
CountryMeanSWLS <- df %>% group_by(CountryOfRes) %>% summarise(meanSWLS = mean(SWLSMean, na.rm=TRUE))

## sort from highest to lowest
MeanDPSorted <- CountryMeanDP[ order(CountryMeanDP$meanDP, decreasing=TRUE), ]
MeanAIPSorted <- CountryMeanAIP[ order(CountryMeanAIP$meanAIP, decreasing=TRUE), ]
MeanGPSorted <- CountryMeanGP[ order(CountryMeanGP$meanGP, decreasing=TRUE), ]
MeanSWLSSorted <- CountryMeanSWLS[ order(CountryMeanSWLS$meanSWLS, decreasing=TRUE), ]

## remove all that aren't top 15
top15DP <- MeanDPSorted[c(1:15),]
top15AIP <- MeanAIPSorted[c(1:15),]
top15GP <- MeanGPSorted[c(1:15),]
top15SWLS <- MeanSWLSSorted[c(1:15),]

## merge with hdi file becuase we want to group by hdi in the barcharts
## need all.x=TRUE because not all of these countries have a recorded hdi
DP <- merge(top15DP,hdi,by="CountryOfRes",all.x=TRUE)
AIP <- merge(top15AIP,hdi,by="CountryOfRes",all.x=TRUE)
GP <- merge(top15GP,hdi,by="CountryOfRes",all.x=TRUE)
SWLS <- merge(top15SWLS,hdi,by="CountryOfRes",all.x=TRUE)

both <- cbind(AIP,GP)
# kable(both)
## Ecuador, France, Iceland, Panama, Puerto Rico, Qatar, Sri Lanka, Taiwan, Turkey, Uruguay in both
## might want to redo this but only include countries with 2+ entries

## plot for 5B
ggplot(AIP, aes(CountryOfRes, meanAIP, fill=HumanDev) ) +                  
  geom_col() + 
  ggtitle("Top 15 Countries by AIP Score") + 
  xlab("Country") + 
  ylab("Average AIP Score") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5),        ## rotate labels on x-axis
        plot.title = element_text(hjust = 0.5) )  +                  ## centers the title
  scale_x_discrete(limits = top15AIP$CountryOfRes)                  ## maintain the order
  #guides(fill=FALSE)                                                  ## removes labels

## plot for 5C
ggplot(GP, aes(CountryOfRes, meanGP, fill=HumanDev) ) +
  geom_col() + 
  ggtitle("Top 15 Countries by GP Score") + 
  xlab("Country") + 
  ylab("Average GP Score") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5),
        plot.title = element_text(hjust = 0.5) )  +
  scale_x_discrete(limits = top15GP$CountryOfRes) 
  #guides(fill=FALSE)


## 5D
model <- lm( df$AnnualIncome ~ df$Age )
summary(model)
## y = 1950.98 + 1496.77 * Age
## r^2 = 0.1341, p-value: 2e-16

## plots all the data
## while the pvalue is low, the r-squared is low. the data is shitty
ggplot(df, aes(x=Age,y=AnnualIncome)) + 
  geom_point() + 
  geom_abline(intercept=1950.98,slope=1496.77,color="blue") +
  ggtitle("Age vs. Annual Income")
  

MeanIncomePerAge <- df %>% group_by(Age) %>% summarise(meanIncome = mean(AnnualIncome, na.rm=TRUE))
model2 <- lm( MeanIncomePerAge$meanIncome ~ MeanIncomePerAge$Age )
summary(model2)
## y = 1781.8 + 1251.1 * Age
## r^2 = 0.7959

## plotting just the mean income at each age
## looks curved

ggplot(MeanIncomePerAge, aes(x=Age,y=meanIncome)) + 
  geom_point() + 
  geom_abline(intercept=1781.8,slope=1251.1,color="blue") +
  ggtitle("Age vs. Mean Annual Income")

## take the log of age to smooth out the line a little
MeanIncomePerAge$logAge <- log(MeanIncomePerAge$Age)
model3 <- lm( MeanIncomePerAge$meanIncome ~ MeanIncomePerAge$logAge )
summary(model3)
## y = -144819 + 55255 * log(Age)
## r^2 = 0.8902

ggplot(MeanIncomePerAge, aes(x=logAge,y=meanIncome)) + 
  geom_point() + 
  geom_abline(intercept=-144819,slope=55255,color="blue") +
  ggtitle("Age vs. Mean Annual Income")

## doubling the age 55255 * log(2) = 38300 increase in mean salary

## 5E
LifeSat <- merge(MeanSWLSSorted,hdi,by="CountryOfRes",all.x=TRUE)
model4 <- lm( LifeSat$meanSWLS ~ LifeSat$HDI )
summary(model4)
## SWLS = 4 - 1.23 HDI
## r^2 = 0.0381, p=0.0768  (not sig at alpha=0.05)

ggplot(LifeSat, aes(x=HDI,y=meanSWLS)) + 
  geom_point() + 
  geom_abline(intercept=4,slope=-1.23,color="blue") +
  ggtitle("HDI vs Mean Life Satisfaction Score")

## group by hdi as a category
hd <- df %>% group_by(HumanDev) %>% summarise(SWLS = mean(SWLSMean, na.rm=TRUE))
ggplot(hd, aes(HumanDev, SWLS, fill=HumanDev) ) +
  geom_col() 
## no still not really correlated

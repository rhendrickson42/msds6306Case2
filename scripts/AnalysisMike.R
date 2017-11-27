library(knitr)
library(ggplot2)
df <- read.csv("~/Documents/CleanedMike.csv")

## we only care about these 7 columns
df2 <- df[ , c( match("Age",names(df)),
                match("AnnualIncome",names(df)),
                match("HDI",names(df)),
                match("DPMean",names(df)),
                match("AIPMean",names(df)),
                match("GPMean",names(df)),
                match("SWLSMean",names(df)) ) ]

## get some statistics of each coliumn
medians <- apply(df2,2, function(x) round( median(x,na.rm=TRUE), 2) )
q1s <- apply(df2,2, function(x) round( quantile(x,0.25,na.rm=TRUE ), 1) )
q3s <- apply(df2,2, function(x) round( quantile(x,0.75,na.rm=TRUE ), 1) )
mins <- apply(df2,2, function(x) round( min(x, na.rm=TRUE ), 1) )
maxs <- apply(df2,2, function(x) round( max(x, na.rm=TRUE ), 0) )
means <- apply(df2,2, function(x) round( mean(x,na.rm=TRUE), 2) )
sds <- apply(df2,2, function(x) round( sd(x,na.rm=TRUE), 2) )

SummaryStats <- cbind(mins,q1s,medians,q3s,maxs,means,sds)
SummaryStats

## view them in an ugly table
kable(SummaryStats)

## remove NAs for Age
cleanedAge <- df2[ !is.na(df2$Age),  ]
## there are only 14 different ages, which is really weird
## setting bins=70 lets you see all 14 ages. might want to do a diff kind of plot
unique(df2$Age)
ggplot(cleanedAge, aes(Age) ) + 
  geom_histogram(bins=70)


## similarly, there are only 10 diff incomes so this is an ugly plot too
unique(df2$AnnualIncome)

cleanedIncome <- df2[ !is.na(df2$AnnualIncome), ]
ggplot(cleanedIncome, aes(AnnualIncome)) +
  geom_histogram()

unique(df2$HDI)

##also ugly
ggplot(df2, aes(HDI)) + 
  geom_histogram(bins=100)


## all are 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0
## would likely look prettier as categorical
unique(df2$DPMean)

ggplot(df2, aes(DPMean)) + 
  geom_histogram(bins=20)


## this one actually looks like a real plot, probably should use this one
ggplot(df2, aes(AIPMean)) + 
  geom_histogram(bins=20)

## same
ggplot(df2, aes(GPMean)) + 
  geom_histogram(bins=20)


## ~21 diff possibilities
unique(df2$SWLSMean)
ggplot(df2, aes(SWLSMean)) + 
  geom_histogram(bins=20)

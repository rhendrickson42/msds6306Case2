# msds6306Case2

Monetizing not making a decision.

## Introduction

Michael and Randall are partners at Gringotts Wizarding Bank. After a major financial downturn, The Bank has tasked them to help improve "performance" with a growing number of past due accounts. Looking into these deliquient accounts led to a new product strategy.

There is a quote associated with actor Christopher Parker concerning procrastination. "Procrastination is like a credit card: it's a lot of fun until you get the bill." Using credit without budgeting can be quite a surprise at bill time. We want to help out in that area.

Procrastinators should not be shamed, they should be embraced. We are developing a set of new Credit and Gift cards targeting procrastinators. These customers don't want to deal with short deadlines. If they forget a payment, no problem. If they forget to redeem a gift card, no problem. We have a product for that. 

With this strategy, the bank president suggested they use some of the company's new Procrastination data, along with the Human Development Index to help select which markets they should first approach with the new company product line.



## Project Structure

 - [Data](Data) - project data directory

 - [outputdata](outputdata) - project output data directory

 - [presentation](presentation) - project presentation directory

 - [scripts](scripts) - project script directory

 - Makefile - Project makefile

 - README.md - this file

 - [codebook.md](codebook.md) <- Project Cookbook


### Human Development Index (HDI)
 
 - HDI reference - http://en.wikipedia.org/wiki/List_of_countries_by_Human_Development_Index#Complete_list_of_countries - wikipedia

 - [HDI Table](outputdata/HDI_By_Countries.csv) - HDI table scraped from above link

## Packages Used

```r

library(dplyr)
library(DT)
library(ggplot2)
library(here)   # install using  - devtools::install_github("krlmlr/here")
library(kableExtra)
library(knitr)
library(rvest)
library(tidytext)

```

### Notes

Notes on occupations from procrastination data. The procrastination dataset occupation column appears to be entered "free form"" and in a non-structured way. This resulted in over 600 different occupations. One way to reduce this is to make the occupation come from a standardized set of occupations with no variations on case. For this study, we reclassified occupations containing "analyst, insurance, medical, postdoc, research, sales, student, writer" as those occupations respectively. We could have also expaned the set to further reduce it, or combine those occupations which fall below a certain count to "other".

### Analysis

 - Analysis [Question4](https://github.com/rhendrickson42/msds6306Case2/blob/master/presentation/analysis_mike4.md)
 - Analysis [Question5](https://github.com/rhendrickson42/msds6306Case2/blob/master/presentation/analysis_mike5.md)
 - Additional [Analysis](https://github.com/rhendrickson42/msds6306Case2/blob/master/presentation/analysis.md) 
 
### Conclusion

The Shareholders at Gringotts Wizarding Bank rejoice! From our analysis above we have found the following Top Nations in Average AIP and Average GP Scores.

The Top 15 Nations in Average AIP Score

 * Macau, Taiwan, Dominican Republic, Cyprus, Qatar, Panama, Puerto Rico, Iceland, Ecuador, Sri Lanka, Columbia, Kenya, Turkey, Uruguay, France

The Top 15 Nations in Average GP Score

 * Taiwan, Puerto Rico, Qatar, Panama, Myanmar, Sri Lanka, Poland, Austria, Turkey, Ecuador, France, Malaysia, Slovenia, Uruguay, Iceland

The following Nations appear in both Top 15 Nations in AIP and Top 15 Nations in GP

 * Ecuador, France, Iceland, Panama, Puerto Rico, Qatar, Sri Lanka, Taiwan, Turkey, Uruguay

People procrastinate in paying bills, redeeming gift certificates and gift cards with long deadlines than those with short deadlines, resulting in lower redemption rates for the long deadlines. 

With the HDI scores and the mix of nations above, we recommend using the Nation of Qatar for our prototype financial products targeting procrastinators.


### Contact Information:

```r
Michael, mblandrum # smu.edu
Randall, rhendrickson # smu.edu

```
### How to build
```r
# with appropriate devtool environment, at project root, run:
make

# with RStudio, 
# File -> Open Project,
# on build tab, select Build All

```

### Reproducible Environment - log session information
[sessionInfo](presentation/HDI_Tables.md) - session information at bottom of page



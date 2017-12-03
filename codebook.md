# Codebook
Michael Landrum, Randall Hendrickson  
December 2, 2017  


```r
knitr::opts_chunk$set(echo = TRUE)
# if(!require("here")) cat("please install here package # devtools::install_github(\"krlmlr/here\")")

library(here)
```

```
## here() starts at D:/dataScience/doingDS/case-study02/msds6306Case2
```

```r
data_setup_HDI_script <- here("scripts", "clean_data_randy2.R")
source(data_setup_HDI_script)
```

## Original Procrastination Dataframe (tidied up a bit for documentation)



```r
library(knitr)
library(kableExtra)

# Original Procrastination Dataframe -> original_pdf
original_pdf <- get_procrastination_dataframe()
original_colnames <- colnames(original_pdf)

#questions <- original_colnames[15:59]
clean_columns <- original_colnames
clean_columns[1] <- "Age"
clean_columns <- gsub("\\."," ", clean_columns)
clean_columns <- gsub("X+\\s","", clean_columns)
clean_columns <- gsub("DP+\\s","DP", clean_columns)
clean_columns <- gsub("AIP+\\s","AIP", clean_columns)
clean_columns <- gsub("GP+\\s","GP", clean_columns)
clean_columns <- gsub("SWLS+\\s","SWLS", clean_columns)
clean_columns <- gsub("Ã¢+\\s+", "\'", clean_columns) # strange character
clean_columns <- gsub("[Å“Ã¢]", "", clean_columns) # strange characters
clean_columns <- gsub("\\s+", " ", clean_columns) # remove double spaces
clean_columns[48] <- gsub("request", " request", clean_columns[48]) # add space after single quote

# clean_columns[c(17,18,19,22,24,30,36,48,53)]

kable(clean_columns, "html", caption = "Cleaner Original Procrastination Dataframe", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") 
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Cleaner Original Procrastination Dataframe</caption>
<tbody>
<tr>
<td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Age </td>
  </tr>
<tr>
<td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Gender </td>
  </tr>
<tr>
<td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> Kids </td>
  </tr>
<tr>
<td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> Edu </td>
  </tr>
<tr>
<td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> Work Status </td>
  </tr>
<tr>
<td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> Annual Income </td>
  </tr>
<tr>
<td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> Current Occupation </td>
  </tr>
<tr>
<td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> How long have you held this position Years </td>
  </tr>
<tr>
<td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> How long have you held this position Months </td>
  </tr>
<tr>
<td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> Community size </td>
  </tr>
<tr>
<td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> Country of residence </td>
  </tr>
<tr>
<td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> Marital Status </td>
  </tr>
<tr>
<td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> Number of sons </td>
  </tr>
<tr>
<td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> Number of daughters </td>
  </tr>
<tr>
<td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> DP1 I waste a lot of time on trivial matters before getting to the final decisions </td>
  </tr>
<tr>
<td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> DP2 Even after I make a decision I delay acting upon it </td>
  </tr>
<tr>
<td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> DP3 I donâ t make decisions unless I really have to </td>
  </tr>
<tr>
<td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> DP4 I delay making decisions until itâ s too late </td>
  </tr>
<tr>
<td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> DP5 I put off making decisions until itâ s too late </td>
  </tr>
<tr>
<td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> AIP1 I pay my bills on time </td>
  </tr>
<tr>
<td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> AIP2 I am prompt and on time for most appointments </td>
  </tr>
<tr>
<td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> AIP3 I lay out my clothes the night before I have an important appointment so I wonâ t be late </td>
  </tr>
<tr>
<td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> AIP4 I find myself running later than I would like to be </td>
  </tr>
<tr>
<td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> AIP5 I donâ t get things done on time </td>
  </tr>
<tr>
<td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> AIP6 If someone were teaching a course on how to get things done on time I would attend </td>
  </tr>
<tr>
<td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> AIP7 My friends and family think I wait until the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> AIP8 I get important things done with time to spare </td>
  </tr>
<tr>
<td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> AIP9 I am not very good at meeting deadlines </td>
  </tr>
<tr>
<td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> AIP10 I find myself running out of time </td>
  </tr>
<tr>
<td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> AIP11 I schedule doctorâ s appointments when I am supposed to without delay </td>
  </tr>
<tr>
<td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> AIP12 I am more punctual than most people I know </td>
  </tr>
<tr>
<td style="text-align:left;"> 32 </td>
   <td style="text-align:left;"> AIP13 I do routine maintenance e g changing the car oil on things I own as often as I should </td>
  </tr>
<tr>
<td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> AIP14 When I have to be somewhere at a certain time my friends expect me to run a bit late </td>
  </tr>
<tr>
<td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> AIP15 Putting things off till the last minute has cost me money in the past </td>
  </tr>
<tr>
<td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> GP1 I often find myself performing tasks that I had intended to do days before </td>
  </tr>
<tr>
<td style="text-align:left;"> 36 </td>
   <td style="text-align:left;"> GP2 I often miss concerts sporting events or the like because I donâ t get around to buying tickets on time </td>
  </tr>
<tr>
<td style="text-align:left;"> 37 </td>
   <td style="text-align:left;"> GP3 When planning a party I make the necessary arrangements well in advance </td>
  </tr>
<tr>
<td style="text-align:left;"> 38 </td>
   <td style="text-align:left;"> GP4 When it is time to get up in the morning I most often get right out of bed </td>
  </tr>
<tr>
<td style="text-align:left;"> 39 </td>
   <td style="text-align:left;"> GP5 A letter may sit for days after I write it before mailing it possible </td>
  </tr>
<tr>
<td style="text-align:left;"> 40 </td>
   <td style="text-align:left;"> GP6 I generally return phone calls promptly </td>
  </tr>
<tr>
<td style="text-align:left;"> 41 </td>
   <td style="text-align:left;"> GP7 Even jobs that require little else except sitting down and doing them I find that they seldom get done for days </td>
  </tr>
<tr>
<td style="text-align:left;"> 42 </td>
   <td style="text-align:left;"> GP8 I usually make decisions as soon as possible </td>
  </tr>
<tr>
<td style="text-align:left;"> 43 </td>
   <td style="text-align:left;"> GP9 I generally delay before starting on work I have to do </td>
  </tr>
<tr>
<td style="text-align:left;"> 44 </td>
   <td style="text-align:left;"> GP10 When traveling I usually have to rush in preparing to arrive at the airport or station at the appropriate time </td>
  </tr>
<tr>
<td style="text-align:left;"> 45 </td>
   <td style="text-align:left;"> GP11 When preparing to go out I am seldom caught having to do something at the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> 46 </td>
   <td style="text-align:left;"> GP12 In preparation for some deadlines I often waste time by doing other things </td>
  </tr>
<tr>
<td style="text-align:left;"> 47 </td>
   <td style="text-align:left;"> GP13 If a bill for a small amount comes I pay it right away </td>
  </tr>
<tr>
<td style="text-align:left;"> 48 </td>
   <td style="text-align:left;"> GP14 I usually return a â œRSVPâ  request very shortly after receiving it </td>
  </tr>
<tr>
<td style="text-align:left;"> 49 </td>
   <td style="text-align:left;"> GP15 I often have a task finished sooner than necessary </td>
  </tr>
<tr>
<td style="text-align:left;"> 50 </td>
   <td style="text-align:left;"> GP16 I always seem to end up shopping for birthday gifts at the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> 51 </td>
   <td style="text-align:left;"> GP17 I usually buy even an essential item at the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> 52 </td>
   <td style="text-align:left;"> GP18 I usually accomplish all the things I plan to do in a day </td>
  </tr>
<tr>
<td style="text-align:left;"> 53 </td>
   <td style="text-align:left;"> GP19 I am continually saying â œIâ ll do it tomorrowâ </td>
  </tr>
<tr>
<td style="text-align:left;"> 54 </td>
   <td style="text-align:left;"> GP20 I usually take care of all the tasks I have to do before I settle down and relax for the evening </td>
  </tr>
<tr>
<td style="text-align:left;"> 55 </td>
   <td style="text-align:left;"> SWLS1 In most ways my life is close to my ideal </td>
  </tr>
<tr>
<td style="text-align:left;"> 56 </td>
   <td style="text-align:left;"> SWLS2 The conditions of my life are excellent </td>
  </tr>
<tr>
<td style="text-align:left;"> 57 </td>
   <td style="text-align:left;"> SWLS3 I am satisfied with my life </td>
  </tr>
<tr>
<td style="text-align:left;"> 58 </td>
   <td style="text-align:left;"> SWLS4 So far I have gotten the important things I want in life </td>
  </tr>
<tr>
<td style="text-align:left;"> 59 </td>
   <td style="text-align:left;"> SWLS5 If I could live my life over I would change almost nothing </td>
  </tr>
<tr>
<td style="text-align:left;"> 60 </td>
   <td style="text-align:left;"> Do you consider yourself a procrastinator </td>
  </tr>
<tr>
<td style="text-align:left;"> 61 </td>
   <td style="text-align:left;"> Do others consider you a procrastinator </td>
  </tr>
</tbody>
</table>

## Procrastination Dataframe


```r
# rename columns of dataframe -> pdf
list_pdf <- question2_rename_columns(original_pdf)
pdf <- list_pdf$df
ocn <- list_pdf$ocn

# pdf - (procrastination dataframe)
pdf_rows <- 1:61
pdf_columns <- colnames(pdf)
pdf_descriptions <- clean_columns

kable(list(pdf_rows, pdf_columns, pdf_descriptions), "html", caption = "Procrastination Dataframe", row.names=FALSE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") 
```

<table class="kable_wrapper table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Procrastination Dataframe</caption>
<tbody><tr>
<td> 

<table><tbody>
<tr>
<td style="text-align:right;"> 1 </td>
  </tr>
<tr>
<td style="text-align:right;"> 2 </td>
  </tr>
<tr>
<td style="text-align:right;"> 3 </td>
  </tr>
<tr>
<td style="text-align:right;"> 4 </td>
  </tr>
<tr>
<td style="text-align:right;"> 5 </td>
  </tr>
<tr>
<td style="text-align:right;"> 6 </td>
  </tr>
<tr>
<td style="text-align:right;"> 7 </td>
  </tr>
<tr>
<td style="text-align:right;"> 8 </td>
  </tr>
<tr>
<td style="text-align:right;"> 9 </td>
  </tr>
<tr>
<td style="text-align:right;"> 10 </td>
  </tr>
<tr>
<td style="text-align:right;"> 11 </td>
  </tr>
<tr>
<td style="text-align:right;"> 12 </td>
  </tr>
<tr>
<td style="text-align:right;"> 13 </td>
  </tr>
<tr>
<td style="text-align:right;"> 14 </td>
  </tr>
<tr>
<td style="text-align:right;"> 15 </td>
  </tr>
<tr>
<td style="text-align:right;"> 16 </td>
  </tr>
<tr>
<td style="text-align:right;"> 17 </td>
  </tr>
<tr>
<td style="text-align:right;"> 18 </td>
  </tr>
<tr>
<td style="text-align:right;"> 19 </td>
  </tr>
<tr>
<td style="text-align:right;"> 20 </td>
  </tr>
<tr>
<td style="text-align:right;"> 21 </td>
  </tr>
<tr>
<td style="text-align:right;"> 22 </td>
  </tr>
<tr>
<td style="text-align:right;"> 23 </td>
  </tr>
<tr>
<td style="text-align:right;"> 24 </td>
  </tr>
<tr>
<td style="text-align:right;"> 25 </td>
  </tr>
<tr>
<td style="text-align:right;"> 26 </td>
  </tr>
<tr>
<td style="text-align:right;"> 27 </td>
  </tr>
<tr>
<td style="text-align:right;"> 28 </td>
  </tr>
<tr>
<td style="text-align:right;"> 29 </td>
  </tr>
<tr>
<td style="text-align:right;"> 30 </td>
  </tr>
<tr>
<td style="text-align:right;"> 31 </td>
  </tr>
<tr>
<td style="text-align:right;"> 32 </td>
  </tr>
<tr>
<td style="text-align:right;"> 33 </td>
  </tr>
<tr>
<td style="text-align:right;"> 34 </td>
  </tr>
<tr>
<td style="text-align:right;"> 35 </td>
  </tr>
<tr>
<td style="text-align:right;"> 36 </td>
  </tr>
<tr>
<td style="text-align:right;"> 37 </td>
  </tr>
<tr>
<td style="text-align:right;"> 38 </td>
  </tr>
<tr>
<td style="text-align:right;"> 39 </td>
  </tr>
<tr>
<td style="text-align:right;"> 40 </td>
  </tr>
<tr>
<td style="text-align:right;"> 41 </td>
  </tr>
<tr>
<td style="text-align:right;"> 42 </td>
  </tr>
<tr>
<td style="text-align:right;"> 43 </td>
  </tr>
<tr>
<td style="text-align:right;"> 44 </td>
  </tr>
<tr>
<td style="text-align:right;"> 45 </td>
  </tr>
<tr>
<td style="text-align:right;"> 46 </td>
  </tr>
<tr>
<td style="text-align:right;"> 47 </td>
  </tr>
<tr>
<td style="text-align:right;"> 48 </td>
  </tr>
<tr>
<td style="text-align:right;"> 49 </td>
  </tr>
<tr>
<td style="text-align:right;"> 50 </td>
  </tr>
<tr>
<td style="text-align:right;"> 51 </td>
  </tr>
<tr>
<td style="text-align:right;"> 52 </td>
  </tr>
<tr>
<td style="text-align:right;"> 53 </td>
  </tr>
<tr>
<td style="text-align:right;"> 54 </td>
  </tr>
<tr>
<td style="text-align:right;"> 55 </td>
  </tr>
<tr>
<td style="text-align:right;"> 56 </td>
  </tr>
<tr>
<td style="text-align:right;"> 57 </td>
  </tr>
<tr>
<td style="text-align:right;"> 58 </td>
  </tr>
<tr>
<td style="text-align:right;"> 59 </td>
  </tr>
<tr>
<td style="text-align:right;"> 60 </td>
  </tr>
<tr>
<td style="text-align:right;"> 61 </td>
  </tr>
</tbody></table>
</td>
   <td> 

<table><tbody>
<tr>
<td style="text-align:left;"> Age </td>
  </tr>
<tr>
<td style="text-align:left;"> Gender </td>
  </tr>
<tr>
<td style="text-align:left;"> Kids </td>
  </tr>
<tr>
<td style="text-align:left;"> Education </td>
  </tr>
<tr>
<td style="text-align:left;"> WorkStatus </td>
  </tr>
<tr>
<td style="text-align:left;"> AnnualInc </td>
  </tr>
<tr>
<td style="text-align:left;"> Occupation </td>
  </tr>
<tr>
<td style="text-align:left;"> JobYears </td>
  </tr>
<tr>
<td style="text-align:left;"> JobMonths </td>
  </tr>
<tr>
<td style="text-align:left;"> CommSize </td>
  </tr>
<tr>
<td style="text-align:left;"> Country </td>
  </tr>
<tr>
<td style="text-align:left;"> Marital </td>
  </tr>
<tr>
<td style="text-align:left;"> Sons </td>
  </tr>
<tr>
<td style="text-align:left;"> Daughters </td>
  </tr>
<tr>
<td style="text-align:left;"> DP1 </td>
  </tr>
<tr>
<td style="text-align:left;"> DP2 </td>
  </tr>
<tr>
<td style="text-align:left;"> DP3 </td>
  </tr>
<tr>
<td style="text-align:left;"> DP4 </td>
  </tr>
<tr>
<td style="text-align:left;"> DP5 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP1 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP2 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP3 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP4 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP5 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP6 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP7 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP8 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP9 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP10 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP11 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP12 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP13 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP14 </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP15 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP1 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP2 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP3 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP4 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP5 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP6 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP7 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP8 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP9 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP10 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP11 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP12 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP13 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP14 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP15 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP16 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP17 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP18 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP19 </td>
  </tr>
<tr>
<td style="text-align:left;"> GP20 </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS1 </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS2 </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS3 </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS4 </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS5 </td>
  </tr>
<tr>
<td style="text-align:left;"> UProcrast </td>
  </tr>
<tr>
<td style="text-align:left;"> OthersProc </td>
  </tr>
</tbody></table>
</td>
   <td> 

<table><tbody>
<tr>
<td style="text-align:left;"> Age </td>
  </tr>
<tr>
<td style="text-align:left;"> Gender </td>
  </tr>
<tr>
<td style="text-align:left;"> Kids </td>
  </tr>
<tr>
<td style="text-align:left;"> Edu </td>
  </tr>
<tr>
<td style="text-align:left;"> Work Status </td>
  </tr>
<tr>
<td style="text-align:left;"> Annual Income </td>
  </tr>
<tr>
<td style="text-align:left;"> Current Occupation </td>
  </tr>
<tr>
<td style="text-align:left;"> How long have you held this position Years </td>
  </tr>
<tr>
<td style="text-align:left;"> How long have you held this position Months </td>
  </tr>
<tr>
<td style="text-align:left;"> Community size </td>
  </tr>
<tr>
<td style="text-align:left;"> Country of residence </td>
  </tr>
<tr>
<td style="text-align:left;"> Marital Status </td>
  </tr>
<tr>
<td style="text-align:left;"> Number of sons </td>
  </tr>
<tr>
<td style="text-align:left;"> Number of daughters </td>
  </tr>
<tr>
<td style="text-align:left;"> DP1 I waste a lot of time on trivial matters before getting to the final decisions </td>
  </tr>
<tr>
<td style="text-align:left;"> DP2 Even after I make a decision I delay acting upon it </td>
  </tr>
<tr>
<td style="text-align:left;"> DP3 I donâ t make decisions unless I really have to </td>
  </tr>
<tr>
<td style="text-align:left;"> DP4 I delay making decisions until itâ s too late </td>
  </tr>
<tr>
<td style="text-align:left;"> DP5 I put off making decisions until itâ s too late </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP1 I pay my bills on time </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP2 I am prompt and on time for most appointments </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP3 I lay out my clothes the night before I have an important appointment so I wonâ t be late </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP4 I find myself running later than I would like to be </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP5 I donâ t get things done on time </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP6 If someone were teaching a course on how to get things done on time I would attend </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP7 My friends and family think I wait until the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP8 I get important things done with time to spare </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP9 I am not very good at meeting deadlines </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP10 I find myself running out of time </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP11 I schedule doctorâ s appointments when I am supposed to without delay </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP12 I am more punctual than most people I know </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP13 I do routine maintenance e g changing the car oil on things I own as often as I should </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP14 When I have to be somewhere at a certain time my friends expect me to run a bit late </td>
  </tr>
<tr>
<td style="text-align:left;"> AIP15 Putting things off till the last minute has cost me money in the past </td>
  </tr>
<tr>
<td style="text-align:left;"> GP1 I often find myself performing tasks that I had intended to do days before </td>
  </tr>
<tr>
<td style="text-align:left;"> GP2 I often miss concerts sporting events or the like because I donâ t get around to buying tickets on time </td>
  </tr>
<tr>
<td style="text-align:left;"> GP3 When planning a party I make the necessary arrangements well in advance </td>
  </tr>
<tr>
<td style="text-align:left;"> GP4 When it is time to get up in the morning I most often get right out of bed </td>
  </tr>
<tr>
<td style="text-align:left;"> GP5 A letter may sit for days after I write it before mailing it possible </td>
  </tr>
<tr>
<td style="text-align:left;"> GP6 I generally return phone calls promptly </td>
  </tr>
<tr>
<td style="text-align:left;"> GP7 Even jobs that require little else except sitting down and doing them I find that they seldom get done for days </td>
  </tr>
<tr>
<td style="text-align:left;"> GP8 I usually make decisions as soon as possible </td>
  </tr>
<tr>
<td style="text-align:left;"> GP9 I generally delay before starting on work I have to do </td>
  </tr>
<tr>
<td style="text-align:left;"> GP10 When traveling I usually have to rush in preparing to arrive at the airport or station at the appropriate time </td>
  </tr>
<tr>
<td style="text-align:left;"> GP11 When preparing to go out I am seldom caught having to do something at the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> GP12 In preparation for some deadlines I often waste time by doing other things </td>
  </tr>
<tr>
<td style="text-align:left;"> GP13 If a bill for a small amount comes I pay it right away </td>
  </tr>
<tr>
<td style="text-align:left;"> GP14 I usually return a â œRSVPâ  request very shortly after receiving it </td>
  </tr>
<tr>
<td style="text-align:left;"> GP15 I often have a task finished sooner than necessary </td>
  </tr>
<tr>
<td style="text-align:left;"> GP16 I always seem to end up shopping for birthday gifts at the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> GP17 I usually buy even an essential item at the last minute </td>
  </tr>
<tr>
<td style="text-align:left;"> GP18 I usually accomplish all the things I plan to do in a day </td>
  </tr>
<tr>
<td style="text-align:left;"> GP19 I am continually saying â œIâ ll do it tomorrowâ </td>
  </tr>
<tr>
<td style="text-align:left;"> GP20 I usually take care of all the tasks I have to do before I settle down and relax for the evening </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS1 In most ways my life is close to my ideal </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS2 The conditions of my life are excellent </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS3 I am satisfied with my life </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS4 So far I have gotten the important things I want in life </td>
  </tr>
<tr>
<td style="text-align:left;"> SWLS5 If I could live my life over I would change almost nothing </td>
  </tr>
<tr>
<td style="text-align:left;"> Do you consider yourself a procrastinator </td>
  </tr>
<tr>
<td style="text-align:left;"> Do others consider you a procrastinator </td>
  </tr>
</tbody></table>
</td>
  </tr></tbody>
</table>


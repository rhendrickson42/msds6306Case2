# HDI Tables
Randall Hendrickson  
November 26, 2017  



## Scrape the Human Development Index tables

Get the Tables from Wikipedia


```r
library(knitr)
library(kableExtra)
options(knitr.table.format = "html") 

mylist_tables <- get_Wikipedia_HDI_tables()
```

```
## Loading required package: xml2
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```
## Warning in dir.create(output_directory): 'D:\dataScience\doingDS\case-
## study02\msds6306Case2\outputdata' already exists
```

```r
  main_table <- mylist_tables[[1]]
 first_table <- mylist_tables[[2]]
second_table <- mylist_tables[[3]]
 third_table <- mylist_tables[[4]]
fourth_table <- mylist_tables[[5]]
```

## Very High Human Development


```r
kable(first_table[,1:2], "html", caption = "Very High Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") %>%
  column_spec(1:2, bold = T) %>%
  row_spec(0, angle = -5) %>%
  row_spec(10:11, bold = T, color = "white", background = "#D7261E")
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Very High Human Development</caption>
 <thead><tr>
<th style="text-align:left;-webkit-transform: rotate(-5deg); -moz-transform: rotate(-5deg); -ms-transform: rotate(-5deg); -o-transform: rotate(-5deg); transform: rotate(-5deg);">   </th>
   <th style="text-align:left;-webkit-transform: rotate(-5deg); -moz-transform: rotate(-5deg); -ms-transform: rotate(-5deg); -o-transform: rotate(-5deg); transform: rotate(-5deg);"> Country </th>
   <th style="text-align:left;-webkit-transform: rotate(-5deg); -moz-transform: rotate(-5deg); -ms-transform: rotate(-5deg); -o-transform: rotate(-5deg); transform: rotate(-5deg);"> HDI </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;font-weight: bold;"> 1 </td>
   <td style="text-align:left;font-weight: bold;"> Norway </td>
   <td style="text-align:left;"> 0.949 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 2 </td>
   <td style="text-align:left;font-weight: bold;"> Australia </td>
   <td style="text-align:left;"> 0.939 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 3 </td>
   <td style="text-align:left;font-weight: bold;"> Switzerland </td>
   <td style="text-align:left;"> 0.939 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 4 </td>
   <td style="text-align:left;font-weight: bold;"> Germany </td>
   <td style="text-align:left;"> 0.926 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 5 </td>
   <td style="text-align:left;font-weight: bold;"> Denmark </td>
   <td style="text-align:left;"> 0.925 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 6 </td>
   <td style="text-align:left;font-weight: bold;"> Singapore </td>
   <td style="text-align:left;"> 0.925 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 7 </td>
   <td style="text-align:left;font-weight: bold;"> Netherlands </td>
   <td style="text-align:left;"> 0.924 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 8 </td>
   <td style="text-align:left;font-weight: bold;"> Ireland </td>
   <td style="text-align:left;"> 0.923 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 9 </td>
   <td style="text-align:left;font-weight: bold;"> Iceland </td>
   <td style="text-align:left;"> 0.921 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> 10 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Canada </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.920 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> 11 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> United States </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.920 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 12 </td>
   <td style="text-align:left;font-weight: bold;"> Hong Kong </td>
   <td style="text-align:left;"> 0.917 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 13 </td>
   <td style="text-align:left;font-weight: bold;"> New Zealand </td>
   <td style="text-align:left;"> 0.915 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 14 </td>
   <td style="text-align:left;font-weight: bold;"> Sweden </td>
   <td style="text-align:left;"> 0.913 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 15 </td>
   <td style="text-align:left;font-weight: bold;"> Liechtenstein </td>
   <td style="text-align:left;"> 0.912 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 16 </td>
   <td style="text-align:left;font-weight: bold;"> United Kingdom </td>
   <td style="text-align:left;"> 0.909 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 17 </td>
   <td style="text-align:left;font-weight: bold;"> Japan </td>
   <td style="text-align:left;"> 0.903 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 18 </td>
   <td style="text-align:left;font-weight: bold;"> South Korea </td>
   <td style="text-align:left;"> 0.901 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 19 </td>
   <td style="text-align:left;font-weight: bold;"> Israel </td>
   <td style="text-align:left;"> 0.899 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 20 </td>
   <td style="text-align:left;font-weight: bold;"> Luxembourg </td>
   <td style="text-align:left;"> 0.898 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 21 </td>
   <td style="text-align:left;font-weight: bold;"> France </td>
   <td style="text-align:left;"> 0.897 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 22 </td>
   <td style="text-align:left;font-weight: bold;"> Belgium </td>
   <td style="text-align:left;"> 0.896 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 23 </td>
   <td style="text-align:left;font-weight: bold;"> Finland </td>
   <td style="text-align:left;"> 0.895 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 24 </td>
   <td style="text-align:left;font-weight: bold;"> Austria </td>
   <td style="text-align:left;"> 0.893 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 25 </td>
   <td style="text-align:left;font-weight: bold;"> Slovenia </td>
   <td style="text-align:left;"> 0.890 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 26 </td>
   <td style="text-align:left;font-weight: bold;"> Italy </td>
   <td style="text-align:left;"> 0.887 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 27 </td>
   <td style="text-align:left;font-weight: bold;"> Spain </td>
   <td style="text-align:left;"> 0.884 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 28 </td>
   <td style="text-align:left;font-weight: bold;"> Czech Republic </td>
   <td style="text-align:left;"> 0.878 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 29 </td>
   <td style="text-align:left;font-weight: bold;"> Greece </td>
   <td style="text-align:left;"> 0.866 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 30 </td>
   <td style="text-align:left;font-weight: bold;"> Brunei </td>
   <td style="text-align:left;"> 0.865 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 31 </td>
   <td style="text-align:left;font-weight: bold;"> Estonia </td>
   <td style="text-align:left;"> 0.865 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 32 </td>
   <td style="text-align:left;font-weight: bold;"> Andorra </td>
   <td style="text-align:left;"> 0.858 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 33 </td>
   <td style="text-align:left;font-weight: bold;"> Cyprus </td>
   <td style="text-align:left;"> 0.856 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 34 </td>
   <td style="text-align:left;font-weight: bold;"> Malta </td>
   <td style="text-align:left;"> 0.856 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 35 </td>
   <td style="text-align:left;font-weight: bold;"> Qatar </td>
   <td style="text-align:left;"> 0.856 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 36 </td>
   <td style="text-align:left;font-weight: bold;"> Poland </td>
   <td style="text-align:left;"> 0.855 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 37 </td>
   <td style="text-align:left;font-weight: bold;"> Lithuania </td>
   <td style="text-align:left;"> 0.848 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 38 </td>
   <td style="text-align:left;font-weight: bold;"> Chile </td>
   <td style="text-align:left;"> 0.847 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 39 </td>
   <td style="text-align:left;font-weight: bold;"> Saudi Arabia </td>
   <td style="text-align:left;"> 0.847 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 40 </td>
   <td style="text-align:left;font-weight: bold;"> Slovakia </td>
   <td style="text-align:left;"> 0.845 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 41 </td>
   <td style="text-align:left;font-weight: bold;"> Portugal </td>
   <td style="text-align:left;"> 0.843 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 42 </td>
   <td style="text-align:left;font-weight: bold;"> United Arab Emirates </td>
   <td style="text-align:left;"> 0.840 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 43 </td>
   <td style="text-align:left;font-weight: bold;"> Hungary </td>
   <td style="text-align:left;"> 0.836 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 44 </td>
   <td style="text-align:left;font-weight: bold;"> Latvia </td>
   <td style="text-align:left;"> 0.830 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 45 </td>
   <td style="text-align:left;font-weight: bold;"> Argentina </td>
   <td style="text-align:left;"> 0.827 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 46 </td>
   <td style="text-align:left;font-weight: bold;"> Croatia </td>
   <td style="text-align:left;"> 0.827 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 47 </td>
   <td style="text-align:left;font-weight: bold;"> Bahrain </td>
   <td style="text-align:left;"> 0.824 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 48 </td>
   <td style="text-align:left;font-weight: bold;"> Montenegro </td>
   <td style="text-align:left;"> 0.807 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 49 </td>
   <td style="text-align:left;font-weight: bold;"> Russia </td>
   <td style="text-align:left;"> 0.804 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 50 </td>
   <td style="text-align:left;font-weight: bold;"> Romania </td>
   <td style="text-align:left;"> 0.802 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 51 </td>
   <td style="text-align:left;font-weight: bold;"> Kuwait </td>
   <td style="text-align:left;"> 0.800 </td>
  </tr>
</tbody>
</table>

## High Human Development


```r
kable(second_table, "html", caption = "High Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") 
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>High Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
   <th style="text-align:left;"> HDI_Category </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Belarus </td>
   <td style="text-align:left;"> 0.796 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Oman </td>
   <td style="text-align:left;"> 0.796 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> Barbados </td>
   <td style="text-align:left;"> 0.795 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> Uruguay </td>
   <td style="text-align:left;"> 0.795 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> Bulgaria </td>
   <td style="text-align:left;"> 0.794 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> Kazakhstan </td>
   <td style="text-align:left;"> 0.794 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> Bahamas </td>
   <td style="text-align:left;"> 0.792 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> Malaysia </td>
   <td style="text-align:left;"> 0.789 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> Palau </td>
   <td style="text-align:left;"> 0.788 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> Panama </td>
   <td style="text-align:left;"> 0.788 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> Antigua and Barbuda </td>
   <td style="text-align:left;"> 0.786 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> Seychelles </td>
   <td style="text-align:left;"> 0.782 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> Mauritius </td>
   <td style="text-align:left;"> 0.781 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> Trinidad and Tobago </td>
   <td style="text-align:left;"> 0.780 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> Costa Rica </td>
   <td style="text-align:left;"> 0.776 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> Serbia </td>
   <td style="text-align:left;"> 0.776 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> Cuba </td>
   <td style="text-align:left;"> 0.775 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> Iran </td>
   <td style="text-align:left;"> 0.774 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:left;"> 0.769 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> Turkey </td>
   <td style="text-align:left;"> 0.767 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> Venezuela </td>
   <td style="text-align:left;"> 0.767 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> Sri Lanka </td>
   <td style="text-align:left;"> 0.766 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> Saint Kitts and Nevis </td>
   <td style="text-align:left;"> 0.765 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> Albania </td>
   <td style="text-align:left;"> 0.764 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> Lebanon </td>
   <td style="text-align:left;"> 0.763 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> Mexico </td>
   <td style="text-align:left;"> 0.762 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> Azerbaijan </td>
   <td style="text-align:left;"> 0.759 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> Brazil </td>
   <td style="text-align:left;"> 0.754 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> Grenada </td>
   <td style="text-align:left;"> 0.754 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> Bosnia and Herzegovina </td>
   <td style="text-align:left;"> 0.750 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> Macedonia </td>
   <td style="text-align:left;"> 0.748 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 32 </td>
   <td style="text-align:left;"> Algeria </td>
   <td style="text-align:left;"> 0.745 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> Armenia </td>
   <td style="text-align:left;"> 0.743 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> Ukraine </td>
   <td style="text-align:left;"> 0.743 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> Jordan </td>
   <td style="text-align:left;"> 0.741 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 36 </td>
   <td style="text-align:left;"> Peru </td>
   <td style="text-align:left;"> 0.740 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 37 </td>
   <td style="text-align:left;"> Thailand </td>
   <td style="text-align:left;"> 0.740 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 38 </td>
   <td style="text-align:left;"> Ecuador </td>
   <td style="text-align:left;"> 0.739 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 39 </td>
   <td style="text-align:left;"> China </td>
   <td style="text-align:left;"> 0.738 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 40 </td>
   <td style="text-align:left;"> Fiji </td>
   <td style="text-align:left;"> 0.736 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 41 </td>
   <td style="text-align:left;"> Mongolia </td>
   <td style="text-align:left;"> 0.735 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 42 </td>
   <td style="text-align:left;"> Saint Lucia </td>
   <td style="text-align:left;"> 0.735 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 43 </td>
   <td style="text-align:left;"> Jamaica </td>
   <td style="text-align:left;"> 0.730 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 44 </td>
   <td style="text-align:left;"> Colombia </td>
   <td style="text-align:left;"> 0.727 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 45 </td>
   <td style="text-align:left;"> Dominica </td>
   <td style="text-align:left;"> 0.726 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 46 </td>
   <td style="text-align:left;"> Suriname </td>
   <td style="text-align:left;"> 0.725 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 47 </td>
   <td style="text-align:left;"> Tunisia </td>
   <td style="text-align:left;"> 0.725 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 48 </td>
   <td style="text-align:left;"> Dominican Republic </td>
   <td style="text-align:left;"> 0.722 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 49 </td>
   <td style="text-align:left;"> Saint Vincent and the Grenadines </td>
   <td style="text-align:left;"> 0.722 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 50 </td>
   <td style="text-align:left;"> Tonga </td>
   <td style="text-align:left;"> 0.721 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 51 </td>
   <td style="text-align:left;"> Libya </td>
   <td style="text-align:left;"> 0.716 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 52 </td>
   <td style="text-align:left;"> Belize </td>
   <td style="text-align:left;"> 0.706 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 53 </td>
   <td style="text-align:left;"> Samoa </td>
   <td style="text-align:left;"> 0.704 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 54 </td>
   <td style="text-align:left;"> Maldives </td>
   <td style="text-align:left;"> 0.701 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 55 </td>
   <td style="text-align:left;"> Uzbekistan </td>
   <td style="text-align:left;"> 0.701 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
</tbody>
</table>

## Medium Human Development


```r
kable(third_table[,1:2], "html", caption = "Medium Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") 
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Medium Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Moldova </td>
   <td style="text-align:left;"> 0.699 </td>
  </tr>
<tr>
<td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Botswana </td>
   <td style="text-align:left;"> 0.698 </td>
  </tr>
<tr>
<td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> Gabon </td>
   <td style="text-align:left;"> 0.697 </td>
  </tr>
<tr>
<td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> Paraguay </td>
   <td style="text-align:left;"> 0.693 </td>
  </tr>
<tr>
<td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> Egypt </td>
   <td style="text-align:left;"> 0.691 </td>
  </tr>
<tr>
<td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> Turkmenistan </td>
   <td style="text-align:left;"> 0.691 </td>
  </tr>
<tr>
<td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> Indonesia </td>
   <td style="text-align:left;"> 0.689 </td>
  </tr>
<tr>
<td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> Palestine </td>
   <td style="text-align:left;"> 0.684 </td>
  </tr>
<tr>
<td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> Vietnam </td>
   <td style="text-align:left;"> 0.683 </td>
  </tr>
<tr>
<td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> Philippines </td>
   <td style="text-align:left;"> 0.682 </td>
  </tr>
<tr>
<td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> El Salvador </td>
   <td style="text-align:left;"> 0.680 </td>
  </tr>
<tr>
<td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> Bolivia </td>
   <td style="text-align:left;"> 0.674 </td>
  </tr>
<tr>
<td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> South Africa </td>
   <td style="text-align:left;"> 0.666 </td>
  </tr>
<tr>
<td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> Kyrgyzstan </td>
   <td style="text-align:left;"> 0.664 </td>
  </tr>
<tr>
<td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> Iraq </td>
   <td style="text-align:left;"> 0.649 </td>
  </tr>
<tr>
<td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> Cape Verde </td>
   <td style="text-align:left;"> 0.648 </td>
  </tr>
<tr>
<td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> Morocco </td>
   <td style="text-align:left;"> 0.647 </td>
  </tr>
<tr>
<td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> Nicaragua </td>
   <td style="text-align:left;"> 0.645 </td>
  </tr>
<tr>
<td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> Guatemala </td>
   <td style="text-align:left;"> 0.640 </td>
  </tr>
<tr>
<td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> Namibia </td>
   <td style="text-align:left;"> 0.640 </td>
  </tr>
<tr>
<td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> Guyana </td>
   <td style="text-align:left;"> 0.638 </td>
  </tr>
<tr>
<td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> Micronesia </td>
   <td style="text-align:left;"> 0.638 </td>
  </tr>
<tr>
<td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> Tajikistan </td>
   <td style="text-align:left;"> 0.627 </td>
  </tr>
<tr>
<td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> Honduras </td>
   <td style="text-align:left;"> 0.625 </td>
  </tr>
<tr>
<td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> India </td>
   <td style="text-align:left;"> 0.624 </td>
  </tr>
<tr>
<td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> Bhutan </td>
   <td style="text-align:left;"> 0.607 </td>
  </tr>
<tr>
<td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> Timor Leste </td>
   <td style="text-align:left;"> 0.605 </td>
  </tr>
<tr>
<td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> Vanuatu </td>
   <td style="text-align:left;"> 0.597 </td>
  </tr>
<tr>
<td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> Congo, Republic of the </td>
   <td style="text-align:left;"> 0.592 </td>
  </tr>
<tr>
<td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> Equatorial Guinea </td>
   <td style="text-align:left;"> 0.592 </td>
  </tr>
<tr>
<td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> Kiribati </td>
   <td style="text-align:left;"> 0.588 </td>
  </tr>
<tr>
<td style="text-align:left;"> 32 </td>
   <td style="text-align:left;"> Laos </td>
   <td style="text-align:left;"> 0.586 </td>
  </tr>
<tr>
<td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> Bangladesh </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> Ghana </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> Zambia </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;"> 36 </td>
   <td style="text-align:left;"> São Tomé and Príncipe </td>
   <td style="text-align:left;"> 0.574 </td>
  </tr>
<tr>
<td style="text-align:left;"> 37 </td>
   <td style="text-align:left;"> Cambodia </td>
   <td style="text-align:left;"> 0.563 </td>
  </tr>
<tr>
<td style="text-align:left;"> 38 </td>
   <td style="text-align:left;"> Nepal </td>
   <td style="text-align:left;"> 0.558 </td>
  </tr>
<tr>
<td style="text-align:left;"> 39 </td>
   <td style="text-align:left;"> Myanmar </td>
   <td style="text-align:left;"> 0.556 </td>
  </tr>
<tr>
<td style="text-align:left;"> 40 </td>
   <td style="text-align:left;"> Kenya </td>
   <td style="text-align:left;"> 0.555 </td>
  </tr>
<tr>
<td style="text-align:left;"> 41 </td>
   <td style="text-align:left;"> Pakistan </td>
   <td style="text-align:left;"> 0.550 </td>
  </tr>
</tbody>
</table>

## Low Human Development


```r
kable(fourth_table, "html", caption = "Low Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") 
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Low Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
   <th style="text-align:left;"> HDI_Category </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Swaziland </td>
   <td style="text-align:left;"> 0.541 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Syria </td>
   <td style="text-align:left;"> 0.536 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> Angola </td>
   <td style="text-align:left;"> 0.533 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> Tanzania </td>
   <td style="text-align:left;"> 0.531 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> Nigeria </td>
   <td style="text-align:left;"> 0.527 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> Cameroon </td>
   <td style="text-align:left;"> 0.518 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> Papua New Guinea </td>
   <td style="text-align:left;"> 0.516 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> Zimbabwe </td>
   <td style="text-align:left;"> 0.516 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> Solomon Islands </td>
   <td style="text-align:left;"> 0.515 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> Mauritania </td>
   <td style="text-align:left;"> 0.513 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> Madagascar </td>
   <td style="text-align:left;"> 0.512 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> Rwanda </td>
   <td style="text-align:left;"> 0.498 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> Comoros </td>
   <td style="text-align:left;"> 0.497 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> Lesotho </td>
   <td style="text-align:left;"> 0.497 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> Senegal </td>
   <td style="text-align:left;"> 0.494 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> Haiti </td>
   <td style="text-align:left;"> 0.493 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> Uganda </td>
   <td style="text-align:left;"> 0.493 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> Sudan </td>
   <td style="text-align:left;"> 0.490 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> Togo </td>
   <td style="text-align:left;"> 0.487 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> Benin </td>
   <td style="text-align:left;"> 0.485 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> Yemen </td>
   <td style="text-align:left;"> 0.482 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> Afghanistan </td>
   <td style="text-align:left;"> 0.479 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> Malawi </td>
   <td style="text-align:left;"> 0.476 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> Côte d'Ivoire </td>
   <td style="text-align:left;"> 0.474 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> Djibouti </td>
   <td style="text-align:left;"> 0.473 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> Gambia </td>
   <td style="text-align:left;"> 0.452 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> Ethiopia </td>
   <td style="text-align:left;"> 0.448 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> Mali </td>
   <td style="text-align:left;"> 0.442 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> Congo, Democratic Republic of the </td>
   <td style="text-align:left;"> 0.435 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> Liberia </td>
   <td style="text-align:left;"> 0.427 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> Guinea Bissau </td>
   <td style="text-align:left;"> 0.424 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 32 </td>
   <td style="text-align:left;"> Eritrea </td>
   <td style="text-align:left;"> 0.420 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> Sierra Leone </td>
   <td style="text-align:left;"> 0.420 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> Mozambique </td>
   <td style="text-align:left;"> 0.418 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> South Sudan </td>
   <td style="text-align:left;"> 0.418 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 36 </td>
   <td style="text-align:left;"> Guinea </td>
   <td style="text-align:left;"> 0.414 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 37 </td>
   <td style="text-align:left;"> Burundi </td>
   <td style="text-align:left;"> 0.404 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 38 </td>
   <td style="text-align:left;"> Burkina Faso </td>
   <td style="text-align:left;"> 0.402 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 39 </td>
   <td style="text-align:left;"> Chad </td>
   <td style="text-align:left;"> 0.396 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 40 </td>
   <td style="text-align:left;"> Niger </td>
   <td style="text-align:left;"> 0.353 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 41 </td>
   <td style="text-align:left;"> Central African Republic </td>
   <td style="text-align:left;"> 0.352 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
</tbody>
</table>

## Main Table - all nations, highlighted


```r
kable(main_table, "html", caption = "Low Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") %>%
  row_spec(c(1, 51, 52, 105, 107, 147, 148, 188), bold = T, color = "white", background = "#D7261E")
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Low Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
   <th style="text-align:left;"> HDI_Category </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 1 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Norway </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.949 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Australia </td>
   <td style="text-align:left;"> 0.939 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> Switzerland </td>
   <td style="text-align:left;"> 0.939 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> Germany </td>
   <td style="text-align:left;"> 0.926 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> Denmark </td>
   <td style="text-align:left;"> 0.925 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> Singapore </td>
   <td style="text-align:left;"> 0.925 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> Netherlands </td>
   <td style="text-align:left;"> 0.924 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> Ireland </td>
   <td style="text-align:left;"> 0.923 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> Iceland </td>
   <td style="text-align:left;"> 0.921 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> Canada </td>
   <td style="text-align:left;"> 0.920 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> United States </td>
   <td style="text-align:left;"> 0.920 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> Hong Kong </td>
   <td style="text-align:left;"> 0.917 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> New Zealand </td>
   <td style="text-align:left;"> 0.915 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> Sweden </td>
   <td style="text-align:left;"> 0.913 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> Liechtenstein </td>
   <td style="text-align:left;"> 0.912 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> United Kingdom </td>
   <td style="text-align:left;"> 0.909 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> Japan </td>
   <td style="text-align:left;"> 0.903 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> South Korea </td>
   <td style="text-align:left;"> 0.901 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> Israel </td>
   <td style="text-align:left;"> 0.899 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> Luxembourg </td>
   <td style="text-align:left;"> 0.898 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> France </td>
   <td style="text-align:left;"> 0.897 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> Belgium </td>
   <td style="text-align:left;"> 0.896 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> Finland </td>
   <td style="text-align:left;"> 0.895 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> Austria </td>
   <td style="text-align:left;"> 0.893 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> Slovenia </td>
   <td style="text-align:left;"> 0.890 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> Italy </td>
   <td style="text-align:left;"> 0.887 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> Spain </td>
   <td style="text-align:left;"> 0.884 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> Czech Republic </td>
   <td style="text-align:left;"> 0.878 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> Greece </td>
   <td style="text-align:left;"> 0.866 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> Brunei </td>
   <td style="text-align:left;"> 0.865 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> Estonia </td>
   <td style="text-align:left;"> 0.865 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 32 </td>
   <td style="text-align:left;"> Andorra </td>
   <td style="text-align:left;"> 0.858 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> Cyprus </td>
   <td style="text-align:left;"> 0.856 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> Malta </td>
   <td style="text-align:left;"> 0.856 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> Qatar </td>
   <td style="text-align:left;"> 0.856 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 36 </td>
   <td style="text-align:left;"> Poland </td>
   <td style="text-align:left;"> 0.855 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 37 </td>
   <td style="text-align:left;"> Lithuania </td>
   <td style="text-align:left;"> 0.848 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 38 </td>
   <td style="text-align:left;"> Chile </td>
   <td style="text-align:left;"> 0.847 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 39 </td>
   <td style="text-align:left;"> Saudi Arabia </td>
   <td style="text-align:left;"> 0.847 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 40 </td>
   <td style="text-align:left;"> Slovakia </td>
   <td style="text-align:left;"> 0.845 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 41 </td>
   <td style="text-align:left;"> Portugal </td>
   <td style="text-align:left;"> 0.843 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 42 </td>
   <td style="text-align:left;"> United Arab Emirates </td>
   <td style="text-align:left;"> 0.840 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 43 </td>
   <td style="text-align:left;"> Hungary </td>
   <td style="text-align:left;"> 0.836 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 44 </td>
   <td style="text-align:left;"> Latvia </td>
   <td style="text-align:left;"> 0.830 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 45 </td>
   <td style="text-align:left;"> Argentina </td>
   <td style="text-align:left;"> 0.827 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 46 </td>
   <td style="text-align:left;"> Croatia </td>
   <td style="text-align:left;"> 0.827 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 47 </td>
   <td style="text-align:left;"> Bahrain </td>
   <td style="text-align:left;"> 0.824 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 48 </td>
   <td style="text-align:left;"> Montenegro </td>
   <td style="text-align:left;"> 0.807 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 49 </td>
   <td style="text-align:left;"> Russia </td>
   <td style="text-align:left;"> 0.804 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 50 </td>
   <td style="text-align:left;"> Romania </td>
   <td style="text-align:left;"> 0.802 </td>
   <td style="text-align:left;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 51 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Kuwait </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.800 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> very high human development </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 52 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Belarus </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.796 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 53 </td>
   <td style="text-align:left;"> Oman </td>
   <td style="text-align:left;"> 0.796 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 54 </td>
   <td style="text-align:left;"> Barbados </td>
   <td style="text-align:left;"> 0.795 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 55 </td>
   <td style="text-align:left;"> Uruguay </td>
   <td style="text-align:left;"> 0.795 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 56 </td>
   <td style="text-align:left;"> Bulgaria </td>
   <td style="text-align:left;"> 0.794 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 57 </td>
   <td style="text-align:left;"> Kazakhstan </td>
   <td style="text-align:left;"> 0.794 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 58 </td>
   <td style="text-align:left;"> Bahamas </td>
   <td style="text-align:left;"> 0.792 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 59 </td>
   <td style="text-align:left;"> Malaysia </td>
   <td style="text-align:left;"> 0.789 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 60 </td>
   <td style="text-align:left;"> Palau </td>
   <td style="text-align:left;"> 0.788 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 61 </td>
   <td style="text-align:left;"> Panama </td>
   <td style="text-align:left;"> 0.788 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 62 </td>
   <td style="text-align:left;"> Antigua and Barbuda </td>
   <td style="text-align:left;"> 0.786 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 63 </td>
   <td style="text-align:left;"> Seychelles </td>
   <td style="text-align:left;"> 0.782 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 64 </td>
   <td style="text-align:left;"> Mauritius </td>
   <td style="text-align:left;"> 0.781 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 65 </td>
   <td style="text-align:left;"> Trinidad and Tobago </td>
   <td style="text-align:left;"> 0.780 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 66 </td>
   <td style="text-align:left;"> Costa Rica </td>
   <td style="text-align:left;"> 0.776 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 67 </td>
   <td style="text-align:left;"> Serbia </td>
   <td style="text-align:left;"> 0.776 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 68 </td>
   <td style="text-align:left;"> Cuba </td>
   <td style="text-align:left;"> 0.775 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 69 </td>
   <td style="text-align:left;"> Iran </td>
   <td style="text-align:left;"> 0.774 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 70 </td>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:left;"> 0.769 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 71 </td>
   <td style="text-align:left;"> Turkey </td>
   <td style="text-align:left;"> 0.767 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 72 </td>
   <td style="text-align:left;"> Venezuela </td>
   <td style="text-align:left;"> 0.767 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 73 </td>
   <td style="text-align:left;"> Sri Lanka </td>
   <td style="text-align:left;"> 0.766 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 74 </td>
   <td style="text-align:left;"> Saint Kitts and Nevis </td>
   <td style="text-align:left;"> 0.765 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 75 </td>
   <td style="text-align:left;"> Albania </td>
   <td style="text-align:left;"> 0.764 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 76 </td>
   <td style="text-align:left;"> Lebanon </td>
   <td style="text-align:left;"> 0.763 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 77 </td>
   <td style="text-align:left;"> Mexico </td>
   <td style="text-align:left;"> 0.762 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 78 </td>
   <td style="text-align:left;"> Azerbaijan </td>
   <td style="text-align:left;"> 0.759 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 79 </td>
   <td style="text-align:left;"> Brazil </td>
   <td style="text-align:left;"> 0.754 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 80 </td>
   <td style="text-align:left;"> Grenada </td>
   <td style="text-align:left;"> 0.754 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 81 </td>
   <td style="text-align:left;"> Bosnia and Herzegovina </td>
   <td style="text-align:left;"> 0.750 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 82 </td>
   <td style="text-align:left;"> Macedonia </td>
   <td style="text-align:left;"> 0.748 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 83 </td>
   <td style="text-align:left;"> Algeria </td>
   <td style="text-align:left;"> 0.745 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 84 </td>
   <td style="text-align:left;"> Armenia </td>
   <td style="text-align:left;"> 0.743 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 85 </td>
   <td style="text-align:left;"> Ukraine </td>
   <td style="text-align:left;"> 0.743 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 86 </td>
   <td style="text-align:left;"> Jordan </td>
   <td style="text-align:left;"> 0.741 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 87 </td>
   <td style="text-align:left;"> Peru </td>
   <td style="text-align:left;"> 0.740 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 88 </td>
   <td style="text-align:left;"> Thailand </td>
   <td style="text-align:left;"> 0.740 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 89 </td>
   <td style="text-align:left;"> Ecuador </td>
   <td style="text-align:left;"> 0.739 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 90 </td>
   <td style="text-align:left;"> China </td>
   <td style="text-align:left;"> 0.738 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 91 </td>
   <td style="text-align:left;"> Fiji </td>
   <td style="text-align:left;"> 0.736 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 92 </td>
   <td style="text-align:left;"> Mongolia </td>
   <td style="text-align:left;"> 0.735 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 93 </td>
   <td style="text-align:left;"> Saint Lucia </td>
   <td style="text-align:left;"> 0.735 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 94 </td>
   <td style="text-align:left;"> Jamaica </td>
   <td style="text-align:left;"> 0.730 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 95 </td>
   <td style="text-align:left;"> Colombia </td>
   <td style="text-align:left;"> 0.727 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 96 </td>
   <td style="text-align:left;"> Dominica </td>
   <td style="text-align:left;"> 0.726 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 97 </td>
   <td style="text-align:left;"> Suriname </td>
   <td style="text-align:left;"> 0.725 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 98 </td>
   <td style="text-align:left;"> Tunisia </td>
   <td style="text-align:left;"> 0.725 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 99 </td>
   <td style="text-align:left;"> Dominican Republic </td>
   <td style="text-align:left;"> 0.722 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 100 </td>
   <td style="text-align:left;"> Saint Vincent and the Grenadines </td>
   <td style="text-align:left;"> 0.722 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 101 </td>
   <td style="text-align:left;"> Tonga </td>
   <td style="text-align:left;"> 0.721 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 102 </td>
   <td style="text-align:left;"> Libya </td>
   <td style="text-align:left;"> 0.716 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 103 </td>
   <td style="text-align:left;"> Belize </td>
   <td style="text-align:left;"> 0.706 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 104 </td>
   <td style="text-align:left;"> Samoa </td>
   <td style="text-align:left;"> 0.704 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 105 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Maldives </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.701 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 106 </td>
   <td style="text-align:left;"> Uzbekistan </td>
   <td style="text-align:left;"> 0.701 </td>
   <td style="text-align:left;"> high human development </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 107 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Moldova </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.699 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 108 </td>
   <td style="text-align:left;"> Botswana </td>
   <td style="text-align:left;"> 0.698 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 109 </td>
   <td style="text-align:left;"> Gabon </td>
   <td style="text-align:left;"> 0.697 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 110 </td>
   <td style="text-align:left;"> Paraguay </td>
   <td style="text-align:left;"> 0.693 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 111 </td>
   <td style="text-align:left;"> Egypt </td>
   <td style="text-align:left;"> 0.691 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 112 </td>
   <td style="text-align:left;"> Turkmenistan </td>
   <td style="text-align:left;"> 0.691 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 113 </td>
   <td style="text-align:left;"> Indonesia </td>
   <td style="text-align:left;"> 0.689 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 114 </td>
   <td style="text-align:left;"> Palestine </td>
   <td style="text-align:left;"> 0.684 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 115 </td>
   <td style="text-align:left;"> Vietnam </td>
   <td style="text-align:left;"> 0.683 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 116 </td>
   <td style="text-align:left;"> Philippines </td>
   <td style="text-align:left;"> 0.682 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 117 </td>
   <td style="text-align:left;"> El Salvador </td>
   <td style="text-align:left;"> 0.680 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 118 </td>
   <td style="text-align:left;"> Bolivia </td>
   <td style="text-align:left;"> 0.674 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 119 </td>
   <td style="text-align:left;"> South Africa </td>
   <td style="text-align:left;"> 0.666 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 120 </td>
   <td style="text-align:left;"> Kyrgyzstan </td>
   <td style="text-align:left;"> 0.664 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 121 </td>
   <td style="text-align:left;"> Iraq </td>
   <td style="text-align:left;"> 0.649 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 122 </td>
   <td style="text-align:left;"> Cape Verde </td>
   <td style="text-align:left;"> 0.648 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 123 </td>
   <td style="text-align:left;"> Morocco </td>
   <td style="text-align:left;"> 0.647 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 124 </td>
   <td style="text-align:left;"> Nicaragua </td>
   <td style="text-align:left;"> 0.645 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 125 </td>
   <td style="text-align:left;"> Guatemala </td>
   <td style="text-align:left;"> 0.640 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 126 </td>
   <td style="text-align:left;"> Namibia </td>
   <td style="text-align:left;"> 0.640 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 127 </td>
   <td style="text-align:left;"> Guyana </td>
   <td style="text-align:left;"> 0.638 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 128 </td>
   <td style="text-align:left;"> Micronesia </td>
   <td style="text-align:left;"> 0.638 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 129 </td>
   <td style="text-align:left;"> Tajikistan </td>
   <td style="text-align:left;"> 0.627 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 130 </td>
   <td style="text-align:left;"> Honduras </td>
   <td style="text-align:left;"> 0.625 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 131 </td>
   <td style="text-align:left;"> India </td>
   <td style="text-align:left;"> 0.624 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 132 </td>
   <td style="text-align:left;"> Bhutan </td>
   <td style="text-align:left;"> 0.607 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 133 </td>
   <td style="text-align:left;"> Timor Leste </td>
   <td style="text-align:left;"> 0.605 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 134 </td>
   <td style="text-align:left;"> Vanuatu </td>
   <td style="text-align:left;"> 0.597 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 135 </td>
   <td style="text-align:left;"> Congo, Republic of the </td>
   <td style="text-align:left;"> 0.592 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 136 </td>
   <td style="text-align:left;"> Equatorial Guinea </td>
   <td style="text-align:left;"> 0.592 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 137 </td>
   <td style="text-align:left;"> Kiribati </td>
   <td style="text-align:left;"> 0.588 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 138 </td>
   <td style="text-align:left;"> Laos </td>
   <td style="text-align:left;"> 0.586 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 139 </td>
   <td style="text-align:left;"> Bangladesh </td>
   <td style="text-align:left;"> 0.579 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 140 </td>
   <td style="text-align:left;"> Ghana </td>
   <td style="text-align:left;"> 0.579 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 141 </td>
   <td style="text-align:left;"> Zambia </td>
   <td style="text-align:left;"> 0.579 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 142 </td>
   <td style="text-align:left;"> São Tomé and Príncipe </td>
   <td style="text-align:left;"> 0.574 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 143 </td>
   <td style="text-align:left;"> Cambodia </td>
   <td style="text-align:left;"> 0.563 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 144 </td>
   <td style="text-align:left;"> Nepal </td>
   <td style="text-align:left;"> 0.558 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 145 </td>
   <td style="text-align:left;"> Myanmar </td>
   <td style="text-align:left;"> 0.556 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 146 </td>
   <td style="text-align:left;"> Kenya </td>
   <td style="text-align:left;"> 0.555 </td>
   <td style="text-align:left;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 147 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Pakistan </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.550 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> medium human development </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 148 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Swaziland </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.541 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 149 </td>
   <td style="text-align:left;"> Syria </td>
   <td style="text-align:left;"> 0.536 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 150 </td>
   <td style="text-align:left;"> Angola </td>
   <td style="text-align:left;"> 0.533 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 151 </td>
   <td style="text-align:left;"> Tanzania </td>
   <td style="text-align:left;"> 0.531 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 152 </td>
   <td style="text-align:left;"> Nigeria </td>
   <td style="text-align:left;"> 0.527 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 153 </td>
   <td style="text-align:left;"> Cameroon </td>
   <td style="text-align:left;"> 0.518 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 154 </td>
   <td style="text-align:left;"> Papua New Guinea </td>
   <td style="text-align:left;"> 0.516 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 155 </td>
   <td style="text-align:left;"> Zimbabwe </td>
   <td style="text-align:left;"> 0.516 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 156 </td>
   <td style="text-align:left;"> Solomon Islands </td>
   <td style="text-align:left;"> 0.515 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 157 </td>
   <td style="text-align:left;"> Mauritania </td>
   <td style="text-align:left;"> 0.513 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 158 </td>
   <td style="text-align:left;"> Madagascar </td>
   <td style="text-align:left;"> 0.512 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 159 </td>
   <td style="text-align:left;"> Rwanda </td>
   <td style="text-align:left;"> 0.498 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 160 </td>
   <td style="text-align:left;"> Comoros </td>
   <td style="text-align:left;"> 0.497 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 161 </td>
   <td style="text-align:left;"> Lesotho </td>
   <td style="text-align:left;"> 0.497 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 162 </td>
   <td style="text-align:left;"> Senegal </td>
   <td style="text-align:left;"> 0.494 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 163 </td>
   <td style="text-align:left;"> Haiti </td>
   <td style="text-align:left;"> 0.493 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 164 </td>
   <td style="text-align:left;"> Uganda </td>
   <td style="text-align:left;"> 0.493 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 165 </td>
   <td style="text-align:left;"> Sudan </td>
   <td style="text-align:left;"> 0.490 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 166 </td>
   <td style="text-align:left;"> Togo </td>
   <td style="text-align:left;"> 0.487 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 167 </td>
   <td style="text-align:left;"> Benin </td>
   <td style="text-align:left;"> 0.485 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 168 </td>
   <td style="text-align:left;"> Yemen </td>
   <td style="text-align:left;"> 0.482 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 169 </td>
   <td style="text-align:left;"> Afghanistan </td>
   <td style="text-align:left;"> 0.479 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 170 </td>
   <td style="text-align:left;"> Malawi </td>
   <td style="text-align:left;"> 0.476 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 171 </td>
   <td style="text-align:left;"> Côte d'Ivoire </td>
   <td style="text-align:left;"> 0.474 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 172 </td>
   <td style="text-align:left;"> Djibouti </td>
   <td style="text-align:left;"> 0.473 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 173 </td>
   <td style="text-align:left;"> Gambia </td>
   <td style="text-align:left;"> 0.452 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 174 </td>
   <td style="text-align:left;"> Ethiopia </td>
   <td style="text-align:left;"> 0.448 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 175 </td>
   <td style="text-align:left;"> Mali </td>
   <td style="text-align:left;"> 0.442 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 176 </td>
   <td style="text-align:left;"> Congo, Democratic Republic of the </td>
   <td style="text-align:left;"> 0.435 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 177 </td>
   <td style="text-align:left;"> Liberia </td>
   <td style="text-align:left;"> 0.427 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 178 </td>
   <td style="text-align:left;"> Guinea Bissau </td>
   <td style="text-align:left;"> 0.424 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 179 </td>
   <td style="text-align:left;"> Eritrea </td>
   <td style="text-align:left;"> 0.420 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 180 </td>
   <td style="text-align:left;"> Sierra Leone </td>
   <td style="text-align:left;"> 0.420 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 181 </td>
   <td style="text-align:left;"> Mozambique </td>
   <td style="text-align:left;"> 0.418 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 182 </td>
   <td style="text-align:left;"> South Sudan </td>
   <td style="text-align:left;"> 0.418 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 183 </td>
   <td style="text-align:left;"> Guinea </td>
   <td style="text-align:left;"> 0.414 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 184 </td>
   <td style="text-align:left;"> Burundi </td>
   <td style="text-align:left;"> 0.404 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 185 </td>
   <td style="text-align:left;"> Burkina Faso </td>
   <td style="text-align:left;"> 0.402 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 186 </td>
   <td style="text-align:left;"> Chad </td>
   <td style="text-align:left;"> 0.396 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;"> 187 </td>
   <td style="text-align:left;"> Niger </td>
   <td style="text-align:left;"> 0.353 </td>
   <td style="text-align:left;"> low human development </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 188 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> Central African Republic </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.352 </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> low human development </td>
  </tr>
</tbody>
</table>

Output SessionInfo()


```r
# log environment
sessionInfo()
```

```
## R version 3.4.2 (2017-09-28)
## Platform: x86_64-w64-mingw32/x64 (64-bit)
## Running under: Windows 10 x64 (build 16299)
## 
## Matrix products: default
## 
## locale:
## [1] LC_COLLATE=English_United States.1252 
## [2] LC_CTYPE=English_United States.1252   
## [3] LC_MONETARY=English_United States.1252
## [4] LC_NUMERIC=C                          
## [5] LC_TIME=English_United States.1252    
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] tidyr_0.7.1      dplyr_0.7.4      rvest_0.3.2      xml2_1.1.1      
## [5] kableExtra_0.6.1 knitr_1.17       here_0.1        
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_0.12.13      bindr_0.1         magrittr_1.5     
##  [4] hms_0.3           munsell_0.4.3     colorspace_1.3-2 
##  [7] viridisLite_0.2.0 R6_2.2.2          rlang_0.1.2      
## [10] highr_0.6         stringr_1.2.0     httr_1.3.1       
## [13] plyr_1.8.4        tools_3.4.2       selectr_0.3-1    
## [16] htmltools_0.3.6   assertthat_0.2.0  yaml_2.1.14      
## [19] rprojroot_1.2     digest_0.6.12     tibble_1.3.4     
## [22] bindrcpp_0.2      purrr_0.2.3       readr_1.1.1      
## [25] curl_3.0          glue_1.1.1        evaluate_0.10.1  
## [28] rmarkdown_1.6     stringi_1.1.5     compiler_3.4.2   
## [31] scales_0.5.0      backports_1.1.1   XML_3.98-1.9     
## [34] pkgconfig_2.0.1
```


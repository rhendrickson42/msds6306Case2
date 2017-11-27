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


<style>
  .col2 {
    columns: 2 200px;         
    -webkit-columns: 2 200px; 
    -moz-columns: 2 200px;    
  }
  .col3 {
    columns: 3 100px;
    -webkit-columns: 3 100px;
    -moz-columns: 3 100px;
  }
</style>

## Very High Human Development

<div class="col2">

```r
kable(first_table[,1:2], "html", caption = "Very High Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") %>%
  column_spec(1:2, bold = T) %>%
#  row_spec(0, angle = -5) %>%
  row_spec(10:11, bold = T, color = "white", background = "#D7261E")
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Very High Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
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
kable(second_table[,1:2], "html", caption = "High Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") %>%
  column_spec(1:2, bold = T) 
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>High Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;font-weight: bold;"> 1 </td>
   <td style="text-align:left;font-weight: bold;"> Belarus </td>
   <td style="text-align:left;"> 0.796 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 2 </td>
   <td style="text-align:left;font-weight: bold;"> Oman </td>
   <td style="text-align:left;"> 0.796 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 3 </td>
   <td style="text-align:left;font-weight: bold;"> Barbados </td>
   <td style="text-align:left;"> 0.795 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 4 </td>
   <td style="text-align:left;font-weight: bold;"> Uruguay </td>
   <td style="text-align:left;"> 0.795 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 5 </td>
   <td style="text-align:left;font-weight: bold;"> Bulgaria </td>
   <td style="text-align:left;"> 0.794 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 6 </td>
   <td style="text-align:left;font-weight: bold;"> Kazakhstan </td>
   <td style="text-align:left;"> 0.794 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 7 </td>
   <td style="text-align:left;font-weight: bold;"> Bahamas </td>
   <td style="text-align:left;"> 0.792 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 8 </td>
   <td style="text-align:left;font-weight: bold;"> Malaysia </td>
   <td style="text-align:left;"> 0.789 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 9 </td>
   <td style="text-align:left;font-weight: bold;"> Palau </td>
   <td style="text-align:left;"> 0.788 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 10 </td>
   <td style="text-align:left;font-weight: bold;"> Panama </td>
   <td style="text-align:left;"> 0.788 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 11 </td>
   <td style="text-align:left;font-weight: bold;"> Antigua and Barbuda </td>
   <td style="text-align:left;"> 0.786 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 12 </td>
   <td style="text-align:left;font-weight: bold;"> Seychelles </td>
   <td style="text-align:left;"> 0.782 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 13 </td>
   <td style="text-align:left;font-weight: bold;"> Mauritius </td>
   <td style="text-align:left;"> 0.781 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 14 </td>
   <td style="text-align:left;font-weight: bold;"> Trinidad and Tobago </td>
   <td style="text-align:left;"> 0.780 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 15 </td>
   <td style="text-align:left;font-weight: bold;"> Costa Rica </td>
   <td style="text-align:left;"> 0.776 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 16 </td>
   <td style="text-align:left;font-weight: bold;"> Serbia </td>
   <td style="text-align:left;"> 0.776 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 17 </td>
   <td style="text-align:left;font-weight: bold;"> Cuba </td>
   <td style="text-align:left;"> 0.775 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 18 </td>
   <td style="text-align:left;font-weight: bold;"> Iran </td>
   <td style="text-align:left;"> 0.774 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 19 </td>
   <td style="text-align:left;font-weight: bold;"> Georgia </td>
   <td style="text-align:left;"> 0.769 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 20 </td>
   <td style="text-align:left;font-weight: bold;"> Turkey </td>
   <td style="text-align:left;"> 0.767 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 21 </td>
   <td style="text-align:left;font-weight: bold;"> Venezuela </td>
   <td style="text-align:left;"> 0.767 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 22 </td>
   <td style="text-align:left;font-weight: bold;"> Sri Lanka </td>
   <td style="text-align:left;"> 0.766 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 23 </td>
   <td style="text-align:left;font-weight: bold;"> Saint Kitts and Nevis </td>
   <td style="text-align:left;"> 0.765 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 24 </td>
   <td style="text-align:left;font-weight: bold;"> Albania </td>
   <td style="text-align:left;"> 0.764 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 25 </td>
   <td style="text-align:left;font-weight: bold;"> Lebanon </td>
   <td style="text-align:left;"> 0.763 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 26 </td>
   <td style="text-align:left;font-weight: bold;"> Mexico </td>
   <td style="text-align:left;"> 0.762 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 27 </td>
   <td style="text-align:left;font-weight: bold;"> Azerbaijan </td>
   <td style="text-align:left;"> 0.759 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 28 </td>
   <td style="text-align:left;font-weight: bold;"> Brazil </td>
   <td style="text-align:left;"> 0.754 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 29 </td>
   <td style="text-align:left;font-weight: bold;"> Grenada </td>
   <td style="text-align:left;"> 0.754 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 30 </td>
   <td style="text-align:left;font-weight: bold;"> Bosnia and Herzegovina </td>
   <td style="text-align:left;"> 0.750 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 31 </td>
   <td style="text-align:left;font-weight: bold;"> Macedonia </td>
   <td style="text-align:left;"> 0.748 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 32 </td>
   <td style="text-align:left;font-weight: bold;"> Algeria </td>
   <td style="text-align:left;"> 0.745 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 33 </td>
   <td style="text-align:left;font-weight: bold;"> Armenia </td>
   <td style="text-align:left;"> 0.743 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 34 </td>
   <td style="text-align:left;font-weight: bold;"> Ukraine </td>
   <td style="text-align:left;"> 0.743 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 35 </td>
   <td style="text-align:left;font-weight: bold;"> Jordan </td>
   <td style="text-align:left;"> 0.741 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 36 </td>
   <td style="text-align:left;font-weight: bold;"> Peru </td>
   <td style="text-align:left;"> 0.740 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 37 </td>
   <td style="text-align:left;font-weight: bold;"> Thailand </td>
   <td style="text-align:left;"> 0.740 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 38 </td>
   <td style="text-align:left;font-weight: bold;"> Ecuador </td>
   <td style="text-align:left;"> 0.739 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 39 </td>
   <td style="text-align:left;font-weight: bold;"> China </td>
   <td style="text-align:left;"> 0.738 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 40 </td>
   <td style="text-align:left;font-weight: bold;"> Fiji </td>
   <td style="text-align:left;"> 0.736 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 41 </td>
   <td style="text-align:left;font-weight: bold;"> Mongolia </td>
   <td style="text-align:left;"> 0.735 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 42 </td>
   <td style="text-align:left;font-weight: bold;"> Saint Lucia </td>
   <td style="text-align:left;"> 0.735 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 43 </td>
   <td style="text-align:left;font-weight: bold;"> Jamaica </td>
   <td style="text-align:left;"> 0.730 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 44 </td>
   <td style="text-align:left;font-weight: bold;"> Colombia </td>
   <td style="text-align:left;"> 0.727 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 45 </td>
   <td style="text-align:left;font-weight: bold;"> Dominica </td>
   <td style="text-align:left;"> 0.726 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 46 </td>
   <td style="text-align:left;font-weight: bold;"> Suriname </td>
   <td style="text-align:left;"> 0.725 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 47 </td>
   <td style="text-align:left;font-weight: bold;"> Tunisia </td>
   <td style="text-align:left;"> 0.725 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 48 </td>
   <td style="text-align:left;font-weight: bold;"> Dominican Republic </td>
   <td style="text-align:left;"> 0.722 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 49 </td>
   <td style="text-align:left;font-weight: bold;"> Saint Vincent and the Grenadines </td>
   <td style="text-align:left;"> 0.722 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 50 </td>
   <td style="text-align:left;font-weight: bold;"> Tonga </td>
   <td style="text-align:left;"> 0.721 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 51 </td>
   <td style="text-align:left;font-weight: bold;"> Libya </td>
   <td style="text-align:left;"> 0.716 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 52 </td>
   <td style="text-align:left;font-weight: bold;"> Belize </td>
   <td style="text-align:left;"> 0.706 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 53 </td>
   <td style="text-align:left;font-weight: bold;"> Samoa </td>
   <td style="text-align:left;"> 0.704 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 54 </td>
   <td style="text-align:left;font-weight: bold;"> Maldives </td>
   <td style="text-align:left;"> 0.701 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 55 </td>
   <td style="text-align:left;font-weight: bold;"> Uzbekistan </td>
   <td style="text-align:left;"> 0.701 </td>
  </tr>
</tbody>
</table>

```r
#  collapse_rows(columns = 3:4)
```

## Medium Human Development


```r
kable(third_table[,1:2], "html", caption = "Medium Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") %>%
  column_spec(1:2, bold = T) 
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
<td style="text-align:left;font-weight: bold;"> 1 </td>
   <td style="text-align:left;font-weight: bold;"> Moldova </td>
   <td style="text-align:left;"> 0.699 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 2 </td>
   <td style="text-align:left;font-weight: bold;"> Botswana </td>
   <td style="text-align:left;"> 0.698 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 3 </td>
   <td style="text-align:left;font-weight: bold;"> Gabon </td>
   <td style="text-align:left;"> 0.697 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 4 </td>
   <td style="text-align:left;font-weight: bold;"> Paraguay </td>
   <td style="text-align:left;"> 0.693 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 5 </td>
   <td style="text-align:left;font-weight: bold;"> Egypt </td>
   <td style="text-align:left;"> 0.691 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 6 </td>
   <td style="text-align:left;font-weight: bold;"> Turkmenistan </td>
   <td style="text-align:left;"> 0.691 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 7 </td>
   <td style="text-align:left;font-weight: bold;"> Indonesia </td>
   <td style="text-align:left;"> 0.689 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 8 </td>
   <td style="text-align:left;font-weight: bold;"> Palestine </td>
   <td style="text-align:left;"> 0.684 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 9 </td>
   <td style="text-align:left;font-weight: bold;"> Vietnam </td>
   <td style="text-align:left;"> 0.683 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 10 </td>
   <td style="text-align:left;font-weight: bold;"> Philippines </td>
   <td style="text-align:left;"> 0.682 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 11 </td>
   <td style="text-align:left;font-weight: bold;"> El Salvador </td>
   <td style="text-align:left;"> 0.680 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 12 </td>
   <td style="text-align:left;font-weight: bold;"> Bolivia </td>
   <td style="text-align:left;"> 0.674 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 13 </td>
   <td style="text-align:left;font-weight: bold;"> South Africa </td>
   <td style="text-align:left;"> 0.666 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 14 </td>
   <td style="text-align:left;font-weight: bold;"> Kyrgyzstan </td>
   <td style="text-align:left;"> 0.664 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 15 </td>
   <td style="text-align:left;font-weight: bold;"> Iraq </td>
   <td style="text-align:left;"> 0.649 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 16 </td>
   <td style="text-align:left;font-weight: bold;"> Cape Verde </td>
   <td style="text-align:left;"> 0.648 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 17 </td>
   <td style="text-align:left;font-weight: bold;"> Morocco </td>
   <td style="text-align:left;"> 0.647 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 18 </td>
   <td style="text-align:left;font-weight: bold;"> Nicaragua </td>
   <td style="text-align:left;"> 0.645 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 19 </td>
   <td style="text-align:left;font-weight: bold;"> Guatemala </td>
   <td style="text-align:left;"> 0.640 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 20 </td>
   <td style="text-align:left;font-weight: bold;"> Namibia </td>
   <td style="text-align:left;"> 0.640 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 21 </td>
   <td style="text-align:left;font-weight: bold;"> Guyana </td>
   <td style="text-align:left;"> 0.638 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 22 </td>
   <td style="text-align:left;font-weight: bold;"> Micronesia </td>
   <td style="text-align:left;"> 0.638 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 23 </td>
   <td style="text-align:left;font-weight: bold;"> Tajikistan </td>
   <td style="text-align:left;"> 0.627 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 24 </td>
   <td style="text-align:left;font-weight: bold;"> Honduras </td>
   <td style="text-align:left;"> 0.625 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 25 </td>
   <td style="text-align:left;font-weight: bold;"> India </td>
   <td style="text-align:left;"> 0.624 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 26 </td>
   <td style="text-align:left;font-weight: bold;"> Bhutan </td>
   <td style="text-align:left;"> 0.607 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 27 </td>
   <td style="text-align:left;font-weight: bold;"> Timor Leste </td>
   <td style="text-align:left;"> 0.605 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 28 </td>
   <td style="text-align:left;font-weight: bold;"> Vanuatu </td>
   <td style="text-align:left;"> 0.597 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 29 </td>
   <td style="text-align:left;font-weight: bold;"> Congo, Republic of the </td>
   <td style="text-align:left;"> 0.592 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 30 </td>
   <td style="text-align:left;font-weight: bold;"> Equatorial Guinea </td>
   <td style="text-align:left;"> 0.592 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 31 </td>
   <td style="text-align:left;font-weight: bold;"> Kiribati </td>
   <td style="text-align:left;"> 0.588 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 32 </td>
   <td style="text-align:left;font-weight: bold;"> Laos </td>
   <td style="text-align:left;"> 0.586 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 33 </td>
   <td style="text-align:left;font-weight: bold;"> Bangladesh </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 34 </td>
   <td style="text-align:left;font-weight: bold;"> Ghana </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 35 </td>
   <td style="text-align:left;font-weight: bold;"> Zambia </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 36 </td>
   <td style="text-align:left;font-weight: bold;"> São Tomé and Príncipe </td>
   <td style="text-align:left;"> 0.574 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 37 </td>
   <td style="text-align:left;font-weight: bold;"> Cambodia </td>
   <td style="text-align:left;"> 0.563 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 38 </td>
   <td style="text-align:left;font-weight: bold;"> Nepal </td>
   <td style="text-align:left;"> 0.558 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 39 </td>
   <td style="text-align:left;font-weight: bold;"> Myanmar </td>
   <td style="text-align:left;"> 0.556 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 40 </td>
   <td style="text-align:left;font-weight: bold;"> Kenya </td>
   <td style="text-align:left;"> 0.555 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 41 </td>
   <td style="text-align:left;font-weight: bold;"> Pakistan </td>
   <td style="text-align:left;"> 0.550 </td>
  </tr>
</tbody>
</table>

## Low Human Development


```r
kable(fourth_table[,1:2], "html", caption = "Low Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") %>%
  column_spec(1:2, bold = T) 
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Low Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;font-weight: bold;"> 1 </td>
   <td style="text-align:left;font-weight: bold;"> Swaziland </td>
   <td style="text-align:left;"> 0.541 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 2 </td>
   <td style="text-align:left;font-weight: bold;"> Syria </td>
   <td style="text-align:left;"> 0.536 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 3 </td>
   <td style="text-align:left;font-weight: bold;"> Angola </td>
   <td style="text-align:left;"> 0.533 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 4 </td>
   <td style="text-align:left;font-weight: bold;"> Tanzania </td>
   <td style="text-align:left;"> 0.531 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 5 </td>
   <td style="text-align:left;font-weight: bold;"> Nigeria </td>
   <td style="text-align:left;"> 0.527 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 6 </td>
   <td style="text-align:left;font-weight: bold;"> Cameroon </td>
   <td style="text-align:left;"> 0.518 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 7 </td>
   <td style="text-align:left;font-weight: bold;"> Papua New Guinea </td>
   <td style="text-align:left;"> 0.516 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 8 </td>
   <td style="text-align:left;font-weight: bold;"> Zimbabwe </td>
   <td style="text-align:left;"> 0.516 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 9 </td>
   <td style="text-align:left;font-weight: bold;"> Solomon Islands </td>
   <td style="text-align:left;"> 0.515 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 10 </td>
   <td style="text-align:left;font-weight: bold;"> Mauritania </td>
   <td style="text-align:left;"> 0.513 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 11 </td>
   <td style="text-align:left;font-weight: bold;"> Madagascar </td>
   <td style="text-align:left;"> 0.512 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 12 </td>
   <td style="text-align:left;font-weight: bold;"> Rwanda </td>
   <td style="text-align:left;"> 0.498 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 13 </td>
   <td style="text-align:left;font-weight: bold;"> Comoros </td>
   <td style="text-align:left;"> 0.497 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 14 </td>
   <td style="text-align:left;font-weight: bold;"> Lesotho </td>
   <td style="text-align:left;"> 0.497 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 15 </td>
   <td style="text-align:left;font-weight: bold;"> Senegal </td>
   <td style="text-align:left;"> 0.494 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 16 </td>
   <td style="text-align:left;font-weight: bold;"> Haiti </td>
   <td style="text-align:left;"> 0.493 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 17 </td>
   <td style="text-align:left;font-weight: bold;"> Uganda </td>
   <td style="text-align:left;"> 0.493 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 18 </td>
   <td style="text-align:left;font-weight: bold;"> Sudan </td>
   <td style="text-align:left;"> 0.490 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 19 </td>
   <td style="text-align:left;font-weight: bold;"> Togo </td>
   <td style="text-align:left;"> 0.487 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 20 </td>
   <td style="text-align:left;font-weight: bold;"> Benin </td>
   <td style="text-align:left;"> 0.485 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 21 </td>
   <td style="text-align:left;font-weight: bold;"> Yemen </td>
   <td style="text-align:left;"> 0.482 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 22 </td>
   <td style="text-align:left;font-weight: bold;"> Afghanistan </td>
   <td style="text-align:left;"> 0.479 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 23 </td>
   <td style="text-align:left;font-weight: bold;"> Malawi </td>
   <td style="text-align:left;"> 0.476 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 24 </td>
   <td style="text-align:left;font-weight: bold;"> Côte d'Ivoire </td>
   <td style="text-align:left;"> 0.474 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 25 </td>
   <td style="text-align:left;font-weight: bold;"> Djibouti </td>
   <td style="text-align:left;"> 0.473 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 26 </td>
   <td style="text-align:left;font-weight: bold;"> Gambia </td>
   <td style="text-align:left;"> 0.452 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 27 </td>
   <td style="text-align:left;font-weight: bold;"> Ethiopia </td>
   <td style="text-align:left;"> 0.448 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 28 </td>
   <td style="text-align:left;font-weight: bold;"> Mali </td>
   <td style="text-align:left;"> 0.442 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 29 </td>
   <td style="text-align:left;font-weight: bold;"> Congo, Democratic Republic of the </td>
   <td style="text-align:left;"> 0.435 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 30 </td>
   <td style="text-align:left;font-weight: bold;"> Liberia </td>
   <td style="text-align:left;"> 0.427 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 31 </td>
   <td style="text-align:left;font-weight: bold;"> Guinea Bissau </td>
   <td style="text-align:left;"> 0.424 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 32 </td>
   <td style="text-align:left;font-weight: bold;"> Eritrea </td>
   <td style="text-align:left;"> 0.420 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 33 </td>
   <td style="text-align:left;font-weight: bold;"> Sierra Leone </td>
   <td style="text-align:left;"> 0.420 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 34 </td>
   <td style="text-align:left;font-weight: bold;"> Mozambique </td>
   <td style="text-align:left;"> 0.418 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 35 </td>
   <td style="text-align:left;font-weight: bold;"> South Sudan </td>
   <td style="text-align:left;"> 0.418 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 36 </td>
   <td style="text-align:left;font-weight: bold;"> Guinea </td>
   <td style="text-align:left;"> 0.414 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 37 </td>
   <td style="text-align:left;font-weight: bold;"> Burundi </td>
   <td style="text-align:left;"> 0.404 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 38 </td>
   <td style="text-align:left;font-weight: bold;"> Burkina Faso </td>
   <td style="text-align:left;"> 0.402 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 39 </td>
   <td style="text-align:left;font-weight: bold;"> Chad </td>
   <td style="text-align:left;"> 0.396 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 40 </td>
   <td style="text-align:left;font-weight: bold;"> Niger </td>
   <td style="text-align:left;"> 0.353 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold;"> 41 </td>
   <td style="text-align:left;font-weight: bold;"> Central African Republic </td>
   <td style="text-align:left;"> 0.352 </td>
  </tr>
</tbody>
</table>
</div>


## Main Table - all nations, highlighted

<div class="col3">

```r
kable(main_table[,1:2], "html", caption = "Low Human Development", row.names=TRUE) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"), full_width = F, position = "left") %>%
  column_spec(1:2, bold = T) %>%
  group_rows("Group 1 - Very High Human Development", 1, 51) %>%
  group_rows("Group 2 - High Human Development", 52, 106) %>%
  group_rows("Group 3 - Medium Human Development", 107, 147) %>%
  group_rows("Group 4 - Low Human Development", 148, 188) %>%
  row_spec(c(1, 51, 52, 105, 107, 147, 148, 188), bold = T, color = "white", background = "#D7261E")
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
<caption>Low Human Development</caption>
 <thead><tr>
<th style="text-align:left;">   </th>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> HDI </th>
  </tr></thead>
<tbody>
<tr grouplength="51"><td colspan="3" style="border-bottom: 1px solid;"><strong>Group 1 - Very High Human Development</strong></td></tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 1 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Norway </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.949 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 2 </td>
   <td style="text-align:left;font-weight: bold;"> Australia </td>
   <td style="text-align:left;"> 0.939 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 3 </td>
   <td style="text-align:left;font-weight: bold;"> Switzerland </td>
   <td style="text-align:left;"> 0.939 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 4 </td>
   <td style="text-align:left;font-weight: bold;"> Germany </td>
   <td style="text-align:left;"> 0.926 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 5 </td>
   <td style="text-align:left;font-weight: bold;"> Denmark </td>
   <td style="text-align:left;"> 0.925 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 6 </td>
   <td style="text-align:left;font-weight: bold;"> Singapore </td>
   <td style="text-align:left;"> 0.925 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 7 </td>
   <td style="text-align:left;font-weight: bold;"> Netherlands </td>
   <td style="text-align:left;"> 0.924 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 8 </td>
   <td style="text-align:left;font-weight: bold;"> Ireland </td>
   <td style="text-align:left;"> 0.923 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 9 </td>
   <td style="text-align:left;font-weight: bold;"> Iceland </td>
   <td style="text-align:left;"> 0.921 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 10 </td>
   <td style="text-align:left;font-weight: bold;"> Canada </td>
   <td style="text-align:left;"> 0.920 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 11 </td>
   <td style="text-align:left;font-weight: bold;"> United States </td>
   <td style="text-align:left;"> 0.920 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 12 </td>
   <td style="text-align:left;font-weight: bold;"> Hong Kong </td>
   <td style="text-align:left;"> 0.917 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 13 </td>
   <td style="text-align:left;font-weight: bold;"> New Zealand </td>
   <td style="text-align:left;"> 0.915 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 14 </td>
   <td style="text-align:left;font-weight: bold;"> Sweden </td>
   <td style="text-align:left;"> 0.913 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 15 </td>
   <td style="text-align:left;font-weight: bold;"> Liechtenstein </td>
   <td style="text-align:left;"> 0.912 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 16 </td>
   <td style="text-align:left;font-weight: bold;"> United Kingdom </td>
   <td style="text-align:left;"> 0.909 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 17 </td>
   <td style="text-align:left;font-weight: bold;"> Japan </td>
   <td style="text-align:left;"> 0.903 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 18 </td>
   <td style="text-align:left;font-weight: bold;"> South Korea </td>
   <td style="text-align:left;"> 0.901 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 19 </td>
   <td style="text-align:left;font-weight: bold;"> Israel </td>
   <td style="text-align:left;"> 0.899 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 20 </td>
   <td style="text-align:left;font-weight: bold;"> Luxembourg </td>
   <td style="text-align:left;"> 0.898 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 21 </td>
   <td style="text-align:left;font-weight: bold;"> France </td>
   <td style="text-align:left;"> 0.897 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 22 </td>
   <td style="text-align:left;font-weight: bold;"> Belgium </td>
   <td style="text-align:left;"> 0.896 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 23 </td>
   <td style="text-align:left;font-weight: bold;"> Finland </td>
   <td style="text-align:left;"> 0.895 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 24 </td>
   <td style="text-align:left;font-weight: bold;"> Austria </td>
   <td style="text-align:left;"> 0.893 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 25 </td>
   <td style="text-align:left;font-weight: bold;"> Slovenia </td>
   <td style="text-align:left;"> 0.890 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 26 </td>
   <td style="text-align:left;font-weight: bold;"> Italy </td>
   <td style="text-align:left;"> 0.887 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 27 </td>
   <td style="text-align:left;font-weight: bold;"> Spain </td>
   <td style="text-align:left;"> 0.884 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 28 </td>
   <td style="text-align:left;font-weight: bold;"> Czech Republic </td>
   <td style="text-align:left;"> 0.878 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 29 </td>
   <td style="text-align:left;font-weight: bold;"> Greece </td>
   <td style="text-align:left;"> 0.866 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 30 </td>
   <td style="text-align:left;font-weight: bold;"> Brunei </td>
   <td style="text-align:left;"> 0.865 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 31 </td>
   <td style="text-align:left;font-weight: bold;"> Estonia </td>
   <td style="text-align:left;"> 0.865 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 32 </td>
   <td style="text-align:left;font-weight: bold;"> Andorra </td>
   <td style="text-align:left;"> 0.858 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 33 </td>
   <td style="text-align:left;font-weight: bold;"> Cyprus </td>
   <td style="text-align:left;"> 0.856 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 34 </td>
   <td style="text-align:left;font-weight: bold;"> Malta </td>
   <td style="text-align:left;"> 0.856 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 35 </td>
   <td style="text-align:left;font-weight: bold;"> Qatar </td>
   <td style="text-align:left;"> 0.856 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 36 </td>
   <td style="text-align:left;font-weight: bold;"> Poland </td>
   <td style="text-align:left;"> 0.855 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 37 </td>
   <td style="text-align:left;font-weight: bold;"> Lithuania </td>
   <td style="text-align:left;"> 0.848 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 38 </td>
   <td style="text-align:left;font-weight: bold;"> Chile </td>
   <td style="text-align:left;"> 0.847 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 39 </td>
   <td style="text-align:left;font-weight: bold;"> Saudi Arabia </td>
   <td style="text-align:left;"> 0.847 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 40 </td>
   <td style="text-align:left;font-weight: bold;"> Slovakia </td>
   <td style="text-align:left;"> 0.845 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 41 </td>
   <td style="text-align:left;font-weight: bold;"> Portugal </td>
   <td style="text-align:left;"> 0.843 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 42 </td>
   <td style="text-align:left;font-weight: bold;"> United Arab Emirates </td>
   <td style="text-align:left;"> 0.840 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 43 </td>
   <td style="text-align:left;font-weight: bold;"> Hungary </td>
   <td style="text-align:left;"> 0.836 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 44 </td>
   <td style="text-align:left;font-weight: bold;"> Latvia </td>
   <td style="text-align:left;"> 0.830 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 45 </td>
   <td style="text-align:left;font-weight: bold;"> Argentina </td>
   <td style="text-align:left;"> 0.827 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 46 </td>
   <td style="text-align:left;font-weight: bold;"> Croatia </td>
   <td style="text-align:left;"> 0.827 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 47 </td>
   <td style="text-align:left;font-weight: bold;"> Bahrain </td>
   <td style="text-align:left;"> 0.824 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 48 </td>
   <td style="text-align:left;font-weight: bold;"> Montenegro </td>
   <td style="text-align:left;"> 0.807 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 49 </td>
   <td style="text-align:left;font-weight: bold;"> Russia </td>
   <td style="text-align:left;"> 0.804 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 50 </td>
   <td style="text-align:left;font-weight: bold;"> Romania </td>
   <td style="text-align:left;"> 0.802 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 51 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Kuwait </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.800 </td>
  </tr>
<tr grouplength="55"><td colspan="3" style="border-bottom: 1px solid;"><strong>Group 2 - High Human Development</strong></td></tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 52 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Belarus </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.796 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 53 </td>
   <td style="text-align:left;font-weight: bold;"> Oman </td>
   <td style="text-align:left;"> 0.796 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 54 </td>
   <td style="text-align:left;font-weight: bold;"> Barbados </td>
   <td style="text-align:left;"> 0.795 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 55 </td>
   <td style="text-align:left;font-weight: bold;"> Uruguay </td>
   <td style="text-align:left;"> 0.795 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 56 </td>
   <td style="text-align:left;font-weight: bold;"> Bulgaria </td>
   <td style="text-align:left;"> 0.794 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 57 </td>
   <td style="text-align:left;font-weight: bold;"> Kazakhstan </td>
   <td style="text-align:left;"> 0.794 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 58 </td>
   <td style="text-align:left;font-weight: bold;"> Bahamas </td>
   <td style="text-align:left;"> 0.792 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 59 </td>
   <td style="text-align:left;font-weight: bold;"> Malaysia </td>
   <td style="text-align:left;"> 0.789 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 60 </td>
   <td style="text-align:left;font-weight: bold;"> Palau </td>
   <td style="text-align:left;"> 0.788 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 61 </td>
   <td style="text-align:left;font-weight: bold;"> Panama </td>
   <td style="text-align:left;"> 0.788 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 62 </td>
   <td style="text-align:left;font-weight: bold;"> Antigua and Barbuda </td>
   <td style="text-align:left;"> 0.786 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 63 </td>
   <td style="text-align:left;font-weight: bold;"> Seychelles </td>
   <td style="text-align:left;"> 0.782 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 64 </td>
   <td style="text-align:left;font-weight: bold;"> Mauritius </td>
   <td style="text-align:left;"> 0.781 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 65 </td>
   <td style="text-align:left;font-weight: bold;"> Trinidad and Tobago </td>
   <td style="text-align:left;"> 0.780 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 66 </td>
   <td style="text-align:left;font-weight: bold;"> Costa Rica </td>
   <td style="text-align:left;"> 0.776 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 67 </td>
   <td style="text-align:left;font-weight: bold;"> Serbia </td>
   <td style="text-align:left;"> 0.776 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 68 </td>
   <td style="text-align:left;font-weight: bold;"> Cuba </td>
   <td style="text-align:left;"> 0.775 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 69 </td>
   <td style="text-align:left;font-weight: bold;"> Iran </td>
   <td style="text-align:left;"> 0.774 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 70 </td>
   <td style="text-align:left;font-weight: bold;"> Georgia </td>
   <td style="text-align:left;"> 0.769 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 71 </td>
   <td style="text-align:left;font-weight: bold;"> Turkey </td>
   <td style="text-align:left;"> 0.767 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 72 </td>
   <td style="text-align:left;font-weight: bold;"> Venezuela </td>
   <td style="text-align:left;"> 0.767 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 73 </td>
   <td style="text-align:left;font-weight: bold;"> Sri Lanka </td>
   <td style="text-align:left;"> 0.766 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 74 </td>
   <td style="text-align:left;font-weight: bold;"> Saint Kitts and Nevis </td>
   <td style="text-align:left;"> 0.765 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 75 </td>
   <td style="text-align:left;font-weight: bold;"> Albania </td>
   <td style="text-align:left;"> 0.764 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 76 </td>
   <td style="text-align:left;font-weight: bold;"> Lebanon </td>
   <td style="text-align:left;"> 0.763 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 77 </td>
   <td style="text-align:left;font-weight: bold;"> Mexico </td>
   <td style="text-align:left;"> 0.762 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 78 </td>
   <td style="text-align:left;font-weight: bold;"> Azerbaijan </td>
   <td style="text-align:left;"> 0.759 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 79 </td>
   <td style="text-align:left;font-weight: bold;"> Brazil </td>
   <td style="text-align:left;"> 0.754 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 80 </td>
   <td style="text-align:left;font-weight: bold;"> Grenada </td>
   <td style="text-align:left;"> 0.754 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 81 </td>
   <td style="text-align:left;font-weight: bold;"> Bosnia and Herzegovina </td>
   <td style="text-align:left;"> 0.750 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 82 </td>
   <td style="text-align:left;font-weight: bold;"> Macedonia </td>
   <td style="text-align:left;"> 0.748 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 83 </td>
   <td style="text-align:left;font-weight: bold;"> Algeria </td>
   <td style="text-align:left;"> 0.745 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 84 </td>
   <td style="text-align:left;font-weight: bold;"> Armenia </td>
   <td style="text-align:left;"> 0.743 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 85 </td>
   <td style="text-align:left;font-weight: bold;"> Ukraine </td>
   <td style="text-align:left;"> 0.743 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 86 </td>
   <td style="text-align:left;font-weight: bold;"> Jordan </td>
   <td style="text-align:left;"> 0.741 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 87 </td>
   <td style="text-align:left;font-weight: bold;"> Peru </td>
   <td style="text-align:left;"> 0.740 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 88 </td>
   <td style="text-align:left;font-weight: bold;"> Thailand </td>
   <td style="text-align:left;"> 0.740 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 89 </td>
   <td style="text-align:left;font-weight: bold;"> Ecuador </td>
   <td style="text-align:left;"> 0.739 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 90 </td>
   <td style="text-align:left;font-weight: bold;"> China </td>
   <td style="text-align:left;"> 0.738 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 91 </td>
   <td style="text-align:left;font-weight: bold;"> Fiji </td>
   <td style="text-align:left;"> 0.736 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 92 </td>
   <td style="text-align:left;font-weight: bold;"> Mongolia </td>
   <td style="text-align:left;"> 0.735 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 93 </td>
   <td style="text-align:left;font-weight: bold;"> Saint Lucia </td>
   <td style="text-align:left;"> 0.735 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 94 </td>
   <td style="text-align:left;font-weight: bold;"> Jamaica </td>
   <td style="text-align:left;"> 0.730 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 95 </td>
   <td style="text-align:left;font-weight: bold;"> Colombia </td>
   <td style="text-align:left;"> 0.727 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 96 </td>
   <td style="text-align:left;font-weight: bold;"> Dominica </td>
   <td style="text-align:left;"> 0.726 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 97 </td>
   <td style="text-align:left;font-weight: bold;"> Suriname </td>
   <td style="text-align:left;"> 0.725 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 98 </td>
   <td style="text-align:left;font-weight: bold;"> Tunisia </td>
   <td style="text-align:left;"> 0.725 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 99 </td>
   <td style="text-align:left;font-weight: bold;"> Dominican Republic </td>
   <td style="text-align:left;"> 0.722 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 100 </td>
   <td style="text-align:left;font-weight: bold;"> Saint Vincent and the Grenadines </td>
   <td style="text-align:left;"> 0.722 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 101 </td>
   <td style="text-align:left;font-weight: bold;"> Tonga </td>
   <td style="text-align:left;"> 0.721 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 102 </td>
   <td style="text-align:left;font-weight: bold;"> Libya </td>
   <td style="text-align:left;"> 0.716 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 103 </td>
   <td style="text-align:left;font-weight: bold;"> Belize </td>
   <td style="text-align:left;"> 0.706 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 104 </td>
   <td style="text-align:left;font-weight: bold;"> Samoa </td>
   <td style="text-align:left;"> 0.704 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 105 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Maldives </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.701 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 106 </td>
   <td style="text-align:left;font-weight: bold;"> Uzbekistan </td>
   <td style="text-align:left;"> 0.701 </td>
  </tr>
<tr grouplength="41"><td colspan="3" style="border-bottom: 1px solid;"><strong>Group 3 - Medium Human Development</strong></td></tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 107 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Moldova </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.699 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 108 </td>
   <td style="text-align:left;font-weight: bold;"> Botswana </td>
   <td style="text-align:left;"> 0.698 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 109 </td>
   <td style="text-align:left;font-weight: bold;"> Gabon </td>
   <td style="text-align:left;"> 0.697 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 110 </td>
   <td style="text-align:left;font-weight: bold;"> Paraguay </td>
   <td style="text-align:left;"> 0.693 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 111 </td>
   <td style="text-align:left;font-weight: bold;"> Egypt </td>
   <td style="text-align:left;"> 0.691 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 112 </td>
   <td style="text-align:left;font-weight: bold;"> Turkmenistan </td>
   <td style="text-align:left;"> 0.691 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 113 </td>
   <td style="text-align:left;font-weight: bold;"> Indonesia </td>
   <td style="text-align:left;"> 0.689 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 114 </td>
   <td style="text-align:left;font-weight: bold;"> Palestine </td>
   <td style="text-align:left;"> 0.684 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 115 </td>
   <td style="text-align:left;font-weight: bold;"> Vietnam </td>
   <td style="text-align:left;"> 0.683 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 116 </td>
   <td style="text-align:left;font-weight: bold;"> Philippines </td>
   <td style="text-align:left;"> 0.682 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 117 </td>
   <td style="text-align:left;font-weight: bold;"> El Salvador </td>
   <td style="text-align:left;"> 0.680 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 118 </td>
   <td style="text-align:left;font-weight: bold;"> Bolivia </td>
   <td style="text-align:left;"> 0.674 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 119 </td>
   <td style="text-align:left;font-weight: bold;"> South Africa </td>
   <td style="text-align:left;"> 0.666 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 120 </td>
   <td style="text-align:left;font-weight: bold;"> Kyrgyzstan </td>
   <td style="text-align:left;"> 0.664 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 121 </td>
   <td style="text-align:left;font-weight: bold;"> Iraq </td>
   <td style="text-align:left;"> 0.649 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 122 </td>
   <td style="text-align:left;font-weight: bold;"> Cape Verde </td>
   <td style="text-align:left;"> 0.648 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 123 </td>
   <td style="text-align:left;font-weight: bold;"> Morocco </td>
   <td style="text-align:left;"> 0.647 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 124 </td>
   <td style="text-align:left;font-weight: bold;"> Nicaragua </td>
   <td style="text-align:left;"> 0.645 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 125 </td>
   <td style="text-align:left;font-weight: bold;"> Guatemala </td>
   <td style="text-align:left;"> 0.640 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 126 </td>
   <td style="text-align:left;font-weight: bold;"> Namibia </td>
   <td style="text-align:left;"> 0.640 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 127 </td>
   <td style="text-align:left;font-weight: bold;"> Guyana </td>
   <td style="text-align:left;"> 0.638 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 128 </td>
   <td style="text-align:left;font-weight: bold;"> Micronesia </td>
   <td style="text-align:left;"> 0.638 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 129 </td>
   <td style="text-align:left;font-weight: bold;"> Tajikistan </td>
   <td style="text-align:left;"> 0.627 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 130 </td>
   <td style="text-align:left;font-weight: bold;"> Honduras </td>
   <td style="text-align:left;"> 0.625 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 131 </td>
   <td style="text-align:left;font-weight: bold;"> India </td>
   <td style="text-align:left;"> 0.624 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 132 </td>
   <td style="text-align:left;font-weight: bold;"> Bhutan </td>
   <td style="text-align:left;"> 0.607 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 133 </td>
   <td style="text-align:left;font-weight: bold;"> Timor Leste </td>
   <td style="text-align:left;"> 0.605 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 134 </td>
   <td style="text-align:left;font-weight: bold;"> Vanuatu </td>
   <td style="text-align:left;"> 0.597 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 135 </td>
   <td style="text-align:left;font-weight: bold;"> Congo, Republic of the </td>
   <td style="text-align:left;"> 0.592 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 136 </td>
   <td style="text-align:left;font-weight: bold;"> Equatorial Guinea </td>
   <td style="text-align:left;"> 0.592 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 137 </td>
   <td style="text-align:left;font-weight: bold;"> Kiribati </td>
   <td style="text-align:left;"> 0.588 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 138 </td>
   <td style="text-align:left;font-weight: bold;"> Laos </td>
   <td style="text-align:left;"> 0.586 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 139 </td>
   <td style="text-align:left;font-weight: bold;"> Bangladesh </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 140 </td>
   <td style="text-align:left;font-weight: bold;"> Ghana </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 141 </td>
   <td style="text-align:left;font-weight: bold;"> Zambia </td>
   <td style="text-align:left;"> 0.579 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 142 </td>
   <td style="text-align:left;font-weight: bold;"> São Tomé and Príncipe </td>
   <td style="text-align:left;"> 0.574 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 143 </td>
   <td style="text-align:left;font-weight: bold;"> Cambodia </td>
   <td style="text-align:left;"> 0.563 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 144 </td>
   <td style="text-align:left;font-weight: bold;"> Nepal </td>
   <td style="text-align:left;"> 0.558 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 145 </td>
   <td style="text-align:left;font-weight: bold;"> Myanmar </td>
   <td style="text-align:left;"> 0.556 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 146 </td>
   <td style="text-align:left;font-weight: bold;"> Kenya </td>
   <td style="text-align:left;"> 0.555 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 147 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Pakistan </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.550 </td>
  </tr>
<tr grouplength="41"><td colspan="3" style="border-bottom: 1px solid;"><strong>Group 4 - Low Human Development</strong></td></tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 148 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Swaziland </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.541 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 149 </td>
   <td style="text-align:left;font-weight: bold;"> Syria </td>
   <td style="text-align:left;"> 0.536 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 150 </td>
   <td style="text-align:left;font-weight: bold;"> Angola </td>
   <td style="text-align:left;"> 0.533 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 151 </td>
   <td style="text-align:left;font-weight: bold;"> Tanzania </td>
   <td style="text-align:left;"> 0.531 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 152 </td>
   <td style="text-align:left;font-weight: bold;"> Nigeria </td>
   <td style="text-align:left;"> 0.527 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 153 </td>
   <td style="text-align:left;font-weight: bold;"> Cameroon </td>
   <td style="text-align:left;"> 0.518 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 154 </td>
   <td style="text-align:left;font-weight: bold;"> Papua New Guinea </td>
   <td style="text-align:left;"> 0.516 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 155 </td>
   <td style="text-align:left;font-weight: bold;"> Zimbabwe </td>
   <td style="text-align:left;"> 0.516 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 156 </td>
   <td style="text-align:left;font-weight: bold;"> Solomon Islands </td>
   <td style="text-align:left;"> 0.515 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 157 </td>
   <td style="text-align:left;font-weight: bold;"> Mauritania </td>
   <td style="text-align:left;"> 0.513 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 158 </td>
   <td style="text-align:left;font-weight: bold;"> Madagascar </td>
   <td style="text-align:left;"> 0.512 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 159 </td>
   <td style="text-align:left;font-weight: bold;"> Rwanda </td>
   <td style="text-align:left;"> 0.498 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 160 </td>
   <td style="text-align:left;font-weight: bold;"> Comoros </td>
   <td style="text-align:left;"> 0.497 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 161 </td>
   <td style="text-align:left;font-weight: bold;"> Lesotho </td>
   <td style="text-align:left;"> 0.497 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 162 </td>
   <td style="text-align:left;font-weight: bold;"> Senegal </td>
   <td style="text-align:left;"> 0.494 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 163 </td>
   <td style="text-align:left;font-weight: bold;"> Haiti </td>
   <td style="text-align:left;"> 0.493 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 164 </td>
   <td style="text-align:left;font-weight: bold;"> Uganda </td>
   <td style="text-align:left;"> 0.493 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 165 </td>
   <td style="text-align:left;font-weight: bold;"> Sudan </td>
   <td style="text-align:left;"> 0.490 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 166 </td>
   <td style="text-align:left;font-weight: bold;"> Togo </td>
   <td style="text-align:left;"> 0.487 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 167 </td>
   <td style="text-align:left;font-weight: bold;"> Benin </td>
   <td style="text-align:left;"> 0.485 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 168 </td>
   <td style="text-align:left;font-weight: bold;"> Yemen </td>
   <td style="text-align:left;"> 0.482 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 169 </td>
   <td style="text-align:left;font-weight: bold;"> Afghanistan </td>
   <td style="text-align:left;"> 0.479 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 170 </td>
   <td style="text-align:left;font-weight: bold;"> Malawi </td>
   <td style="text-align:left;"> 0.476 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 171 </td>
   <td style="text-align:left;font-weight: bold;"> Côte d'Ivoire </td>
   <td style="text-align:left;"> 0.474 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 172 </td>
   <td style="text-align:left;font-weight: bold;"> Djibouti </td>
   <td style="text-align:left;"> 0.473 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 173 </td>
   <td style="text-align:left;font-weight: bold;"> Gambia </td>
   <td style="text-align:left;"> 0.452 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 174 </td>
   <td style="text-align:left;font-weight: bold;"> Ethiopia </td>
   <td style="text-align:left;"> 0.448 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 175 </td>
   <td style="text-align:left;font-weight: bold;"> Mali </td>
   <td style="text-align:left;"> 0.442 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 176 </td>
   <td style="text-align:left;font-weight: bold;"> Congo, Democratic Republic of the </td>
   <td style="text-align:left;"> 0.435 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 177 </td>
   <td style="text-align:left;font-weight: bold;"> Liberia </td>
   <td style="text-align:left;"> 0.427 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 178 </td>
   <td style="text-align:left;font-weight: bold;"> Guinea Bissau </td>
   <td style="text-align:left;"> 0.424 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 179 </td>
   <td style="text-align:left;font-weight: bold;"> Eritrea </td>
   <td style="text-align:left;"> 0.420 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 180 </td>
   <td style="text-align:left;font-weight: bold;"> Sierra Leone </td>
   <td style="text-align:left;"> 0.420 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 181 </td>
   <td style="text-align:left;font-weight: bold;"> Mozambique </td>
   <td style="text-align:left;"> 0.418 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 182 </td>
   <td style="text-align:left;font-weight: bold;"> South Sudan </td>
   <td style="text-align:left;"> 0.418 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 183 </td>
   <td style="text-align:left;font-weight: bold;"> Guinea </td>
   <td style="text-align:left;"> 0.414 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 184 </td>
   <td style="text-align:left;font-weight: bold;"> Burundi </td>
   <td style="text-align:left;"> 0.404 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 185 </td>
   <td style="text-align:left;font-weight: bold;"> Burkina Faso </td>
   <td style="text-align:left;"> 0.402 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 186 </td>
   <td style="text-align:left;font-weight: bold;"> Chad </td>
   <td style="text-align:left;"> 0.396 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;" indentlevel="1"> 187 </td>
   <td style="text-align:left;font-weight: bold;"> Niger </td>
   <td style="text-align:left;"> 0.353 </td>
  </tr>
<tr>
<td style="text-align:left;font-weight: bold; padding-left: 2em;font-weight: bold;color: white;background-color: #D7261E;" indentlevel="1"> 188 </td>
   <td style="text-align:left;font-weight: bold;font-weight: bold;color: white;background-color: #D7261E;"> Central African Republic </td>
   <td style="text-align:left;font-weight: bold;color: white;background-color: #D7261E;"> 0.352 </td>
  </tr>
</tbody>
</table>
</div>

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


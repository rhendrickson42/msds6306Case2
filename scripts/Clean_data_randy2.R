# devtools::install_github("krlmlr/here")

# note: in RStudio, choose Edit -> Folding -> Collapse All / Expand All to view functions
# --- get_procrastination_dataframe <- function()
# --- init_document_dataframe <- function(my_dataframe) -- TODO maybe remove, used in investigation
# --- splitvec <- function(x) {
# --- question2_rename_columns <- function(df) {
# --- question2_c <- function(df) {
# --- question3_c_Merge_Data <- function(df) {

### =======================================          

get_procrastination_dataframe <- function() {
  library(here)

  datafile <- here("Data", "Procrastination.csv")
  my_df <- read.csv(datafile, header = TRUE, stringsAsFactors = FALSE)

  return (my_df) 
}

### =======================================          

init_document_dataframe <- function(my_dataframe) {
  library(tidytext)
  doc_df <- tidy(my_dataframe)
  
  return(doc_df)
}

# might need something like this??
fixup_null_2NA <- function(df_tofix, col_2fix) {
  test_df <- df_tofix
  test_df[sapply(test_df$col_2fix, is.null)] <- NA
  return(df_tofix)
}

splitvec <- function(x) {
  xx <- strsplit(x, " ")
  return(xx)
}

### =======================================          

question2_rename_columns <- function(df) {
  # returns list of ( new_df, old_cnames )
  old_cnames <- colnames(df)
  new_df <- df

  # words list
  wvec10 <- "Age Gender Kids Education WorkStatus AnnualInc Occupation JobYears JobMonths CommSize"
  wvec20 <- "Country Marital Sons Daughters DP1 DP2 DP3 DP4 DP5 AIP1"
  wvec30 <- "AIP2 AIP3 AIP4 AIP5 AIP6 AIP7 AIP8 AIP9 AIP10 AIP11"
  wvec40 <- "AIP12 AIP13 AIP14 AIP15 GP1 GP2 GP3 GP4 GP5 GP6"
  wvec50 <- "GP7 GP8 GP9 GP10 GP11 GP12 GP13 GP14 GP15 GP16"
  wvec61 <- "GP17 GP18 GP19 GP20 SWLS1 SWLS2 SWLS3 SWLS4 SWLS5 UProcrast OthersProc"
  
  cnamesNew <- c(splitvec(wvec10), splitvec(wvec20), splitvec(wvec30), splitvec(wvec40), splitvec(wvec50), splitvec(wvec61))
  cnamesNew <- unlist(cnamesNew)
  colnames(new_df) <- cnamesNew   ## change column names

  # R doesn't allow multiple return values, return a list instead
  return( list(df=new_df,ocn=old_cnames) )
}

### =======================================          

question2_c <- function(df) {
  p_df <- df

  # ---------------------------------------  
  # 2. c. i.
  # round Years columns to integer
  p_df$Age <- as.integer(round(p_df$Age)) 
  p_df$JobYears <- as.integer(round(p_df$JobYears)) 
  
  # most people have not been doing anything for over 100 years, treat as NA
  p_df$JobYears <- as.integer(gsub(999, NA, p_df$JobYears)) 
  
  p_df$UProcrast[p_df$UProcrast == ""] <- NA
  p_df$OthersProc <- as.character(p_df$OthersProc)
  p_df$OthersProc[p_df$OthersProc == ""] <- NA
  p_df$OthersProc[p_df$OthersProc == "0"] <- NA
  p_df$OthersProc[p_df$OthersProc == "4"] <- NA
  p_df$OthersProc <- as.factor(p_df$OthersProc)
  
  # rename country
  p_df$Country[p_df$Country == "Isreal"] <- "Israel"

  # ---------------------------------------  
  # 2. c. ii.
  # Male, Female <- 1, 2 , change back to integer
  p_df$Sons <- gsub("Male",   1, p_df$Sons)
  p_df$Sons <- gsub("Female", 2, p_df$Sons)
  p_df$Sons <- as.integer(p_df$Sons)
  
  # ---------------------------------------  
  # 2. c. iii.
  # no "0" country of residences, treat as missing
  p_df$Country <- gsub(0, NA, p_df$Country)
  p_df$Country[p_df$Country == ""] <- NA
  
  # ---------------------------------------  
  # 2. c. iv.
  # treat current occupation "please specify" and "0" as missing
  p_df$Occupation[p_df$Occupation == "please specify"] <- NA
  p_df$Occupation[p_df$Occupation == 0] <- NA
  p_df$Occupation[p_df$Occupation == ""] <- NA
  
  # ESL Teacher should be a teacher
  p_df$Occupation[grep("teacher", p_df$Occupation, ignore.case = TRUE)] <- "teacher"

  # reduce some occupations that are very similar
  p_df$Occupation[grep("analyst", p_df$Occupation, ignore.case = TRUE)] <- "analyst"
  p_df$Occupation[grep("insurance", p_df$Occupation, ignore.case = TRUE)] <- "insurance"
  p_df$Occupation[grep("medical", p_df$Occupation, ignore.case = TRUE)] <- "medical"
  p_df$Occupation[grep("postdoc", p_df$Occupation, ignore.case = TRUE)] <- "postdoc"
  p_df$Occupation[grep("research", p_df$Occupation, ignore.case = TRUE)] <- "research"
  p_df$Occupation[grep("sales", p_df$Occupation, ignore.case = TRUE)] <- "sales"
  p_df$Occupation[grep("self", p_df$Occupation, ignore.case = TRUE)] <- "self_employed"
  p_df$Occupation[grep("student", p_df$Occupation, ignore.case = TRUE)] <- "student"
  p_df$Occupation[grep("writer", p_df$Occupation, ignore.case = TRUE)] <- "writer"
  p_df$Occupation[grep("IT", p_df$Occupation, ignore.case = TRUE)] <- "IT"

  # look for some occupations to help reduce, create temp count
  # tcnt <- get_counts_df_vector(p_df$Occupation, c1name = "occupation")
  # reclassify those which are less than some count
  # p_df$Occupation[which(tcnt$frequency < 3)] <- "misc"

  # ---------------------------------------  
  # 2. d. 
  # converted Age, JobYears, Sons above

  # ---------------------------------------  
  # 2. e. 
  # compute mean for DP, AIP, GP, SWLS
  p_df$DPMean   <- rowMeans( p_df[,c(15,19)]  )
  p_df$AIPMean  <- rowMeans( p_df[,c(20:34)] )
  p_df$GPMean   <- rowMeans( p_df[,c(35:54)] )
  p_df$SWLSMean <- rowMeans( p_df[,c(55:59)] )

  # save dt after 2.e for verification
  step2_datafile <- here("outputdata", "question_2e_dataframe.csv")
  write.csv(p_df, step2_datafile, row.names=FALSE)
  
  return(p_df)
}

# utility function - quick counts table
# ex. counts_occupation <- get_counts_df_vector(proc_age_filtered$Occupation, "Occupation", "Frequency")
# then kable(counts_occupation), or str(counts_occupation)
#
get_counts_df_vector <- function(x, c1name="variable", c2name="frequency") {
  counts_vec <- as.data.frame(table(x))
  colnames(counts_vec) <- c(c1name, c2name)
  return(counts_vec)
}

### =======================================          

question3_c_Merge_Data <- function(df) {
  temp_df <- df
  
  # 3. c

  HDI_datafile <- here("outputdata", "HDI_By_Countries.csv")
  HDI_By_Country <- read.csv(HDI_datafile, stringsAsFactors = FALSE)

  # merge data
  temp_df2 <- merge(temp_df, HDI_By_Country, by="Country")

  # TODO remove one after verify
  dim(temp_df2)
  dim(temp_df)
  # TODO - check again
  #[1] 3996   68
  #[1] 4264   65

  # write tidy out
  tidy_datafile <- here("outputdata", "Tidy_Randy.csv")
  write.csv(temp_df2, tidy_datafile)

  return(temp_df2)
}

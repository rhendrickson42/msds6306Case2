# devtools::install_github("krlmlr/here")
library(here)

datafile <- here("Data", "Procrastination.csv")

my_df <- read.csv(datafile, header = TRUE, stringsAsFactors = FALSE)

dim(my_df)
# [1] 4264   61

# backup and display original column names
backup_cnames_orig <- colnames(my_df)
head(backup_cnames_orig, n = 100)

temp_df <- my_df

splitvec <- function(x) {
  xx <- strsplit(x, " ")
  return(xx)
}

# might need something like this??
fixup_null_2NA <- function(df_tofix, col_2fix) {
  test_df <- df_tofix
  test_df[sapply(test_df$col_2fix, is.null)] <- NA
  return(df_tofix)
}

# words list
wvec10 <- "Age Gender Kids Education WorkStatus AnnualInc Occupation JobYears JobMonths CommSize"
wvec20 <- "Country Marital Sons Daughters DP1 DP2 DP3 DP4 DP5 AIP1"
wvec30 <- "AIP2 AIP3 AIP4 AIP5 AIP6 AIP7 AIP8 AIP9 AIP10 AIP11"
wvec40 <- "AIP12 AIP13 AIP14 AIP15 GP1 GP2 GP3 GP4 GP5 GP6"
wvec50 <- "GP7 GP8 GP9 GP10 GP11 GP12 GP13 GP14 GP15 GP16"
wvec61 <- "GP17 GP18 GP19 GP20 SWLS1 SWLS2 SWLS3 SWLS4 SWLS5 UProcrast OthersProc"

cnamesNew <- c(splitvec(wvec10), splitvec(wvec20), splitvec(wvec30), splitvec(wvec40), splitvec(wvec50), splitvec(wvec61))
cnamesNew <- unlist(cnamesNew)
colnames(temp_df) <- cnamesNew   ## change column names

#show column names for difference 
head(temp_df, n = 100)
dim(temp_df)

# TODO: update codebook with updated columns

# 2c.

# 2c. i
temp_df$JobYears <- round(temp_df$JobYears)
max(temp_df$JobYears)
temp_df$JobYears[temp_df$JobYears > 75] <- NA

# look at age
max(temp_df$Age, na.rm = TRUE)
max(temp_df$Age, na.rm = FALSE)

temp_df$Gender[temp_df$Gender=="" | is.na(temp_df$Gender)] <- "missing"
temp_df$Education[temp_df$Education=="" | is.na(temp_df$Education)] <- "missing"

# 2c. ii
# Male, Female <- 1, 2 , change back to integer
temp_df$Sons[temp_df$Sons == "Male"] <- 1
temp_df$Sons[temp_df$Sons == "Female"] <- 2
temp_df$Sons <- as.integer(temp_df$Sons)

# 2c. iii
# no countries should have "0" residents
temp_df$Country[temp_df$Country == "0" | is.na(temp_df$Country) | temp_df$Country==""] <- "missing"

# TODO: remove underage at some point

# TODO: make sure columns proper data type
# 2d.

# 2e.
# DP, AIP, GP, SWLS mean columns
temp_df$Mean_DP   <- rowMeans(temp_df[, c(15:19)])
temp_df$Mean_AIP  <- rowMeans(temp_df[, c(20:34)])
temp_df$Mean_GP   <- rowMeans(temp_df[, c(35:54)])
temp_df$Mean_SWLS <- rowMeans(temp_df[, c(55:59)])


# 3C
# TODO: output data need to be written to cleaned folder
# note - remove/re index
datafile2 <- here(".", "HDI_By_Countries.csv")
HDI_By_Country <- read.csv(datafile2, stringsAsFactors = FALSE)

# merge data
temp_df2 <- merge(temp_df, HDI_By_Country, by="Country")

dim(temp_df2)
dim(temp_df)
#[1] 3996   68
#[1] 4264   65

tidy_df <-temp_df2
write.csv(tidy_df,"Tidy_Randy.csv")


##### original data
#> head(backup_cnames_orig, n = 100)
#[1] "ï..Age"                                                                                                                  
#[2] "Gender"                                                                                                                  
#[3] "Kids"                                                                                                                    
#[4] "Edu"                                                                                                                     
#[5] "Work.Status"                                                                                                             
#[6] "Annual.Income"                                                                                                           
#[7] "Current.Occupation"                                                                                                      
#[8] "How.long.have.you.held.this.position...Years"                                                                            
#[9] "How.long.have.you.held.this.position...Months"                                                                           
#[10] "Community.size"                                                                                                          
#[11] "Country.of.residence"                                                                                                    
#[12] "Marital.Status"                                                                                                          
#[13] "Number.of.sons"                                                                                                          
#[14] "Number.of.daughters"                                                                                                     
#[15] "X.DP.1..I.waste.a.lot.of.time.on.trivial.matters.before.getting.to.the.final.decisions"                                  
#[16] "X.DP.2..Even.after.I.make.a.decision.I.delay.acting.upon.it"                                                             
#[17] "X.DP.3..I.donâ..t.make.decisions.unless.I.really.have.to"                                                                
#[18] "X.DP.4..I.delay.making.decisions.until.itâ..s.too.late"                                                                  
#[19] "X.DP.5..I.put.off.making.decisions.until.itâ..s.too.late"                                                                
#[20] "X.AIP.1..I.pay.my.bills.on.time"                                                                                         
#[21] "X.AIP.2.I.am.prompt.and.on.time.for.most.appointments."                                                                  
#[22] "X.AIP.3.I.lay.out.my.clothes.the.night.before.I.have.an.important.appointment..so.I.wonâ..t.be.late"                     
#[23] "X.AIP.4..I.find.myself.running.later.than.I.would.like.to.be"                                                            
#[24] "X.AIP.5..I.donâ..t.get.things.done.on.time"                                                                              
#[25] "X.AIP.6..If.someone.were.teaching.a.course.on.how.to.get.things.done.on.time..I.would.attend"                            
#[26] "X.AIP.7..My.friends.and.family.think.I.wait.until.the.last.minute."                                                      
#[27] "X.AIP.8..I.get.important.things.done.with.time.to.spare"                                                                 
#[28] "X.AIP.9..I.am.not.very.good.at.meeting.deadlines"                                                                        
#[29] "X.AIP.10..I.find.myself.running.out.of.time."                                                                            
#[30] "X.AIP.11..I.schedule.doctorâ..s.appointments.when.I.am.supposed.to.without.delay"                                        
#[31] "X.AIP.12..I.am.more.punctual.than.most.people.I.know"                                                                    
#[32] "X.AIP.13..I.do.routine.maintenance..e.g...changing.the.car.oil..on.things.I.own.as.often.as.I.should"                    
#[33] "X.AIP.14.When.I.have.to.be.somewhere.at.a.certain.time.my.friends.expect.me.to.run.a.bit.late"                           
#[34] "X.AIP.15.Putting.things.off.till.the.last.minute.has.cost.me.money.in.the.past"                                          
#[35] "X.GP.1.I.often.find.myself.performing.tasks.that.I.had.intended.to.do.days.before"                                       
#[36] "X.GP2..I.often.miss.concerts..sporting.events..or.the.like.because.I.donâ..t.get.around.to.buying.tickets.on.time"       
#[37] "X.GP.3..When.planning.a.party..I.make.the.necessary.arrangements.well.in.advance"                                        
#[38] "X.GP.4..When.it.is.time.to.get.up.in.the.morning..I.most.often.get.right.out.of.bed"                                     
#[39] "X.GP.5..A.letter.may.sit.for.days.after.I.write.it.before.mailing.it.possible"                                           
#[40] "X.GP.6..I.generally.return.phone.calls.promptly"                                                                         
#[41] "X.GP.7..Even.jobs.that.require.little.else.except.sitting.down.and.doing.them..I.find.that.they.seldom.get.done.for.days"
#[42] "X.GP.8..I.usually.make.decisions.as.soon.as.possible"                                                                    
#[43] "X.GP.9..I.generally.delay.before.starting.on.work.I.have.to.do"                                                          
#[44] "X.GP.10..When.traveling..I.usually.have.to.rush.in.preparing.to.arrive.at.the.airport.or.station.at.the.appropriate.time"
#[45] "X.GP.11..When.preparing.to.go.out..I.am.seldom.caught.having.to.do.something.at.the.last.minute"                         
#[46] "X.GP.12..In.preparation.for.some.deadlines..I.often.waste.time.by.doing.other.things"                                    
#[47] "X.GP.13..If.a.bill.for.a.small.amount.comes..I.pay.it.right.away"                                                        
#[48] "X.GP.14..I.usually.return.a.â.œRSVPâ...request.very.shortly.after.receiving.it"                                          
#[49] "X.GP.15..I.often.have.a.task.finished.sooner.than.necessary"                                                             
#[50] "X.GP.16..I.always.seem.to.end.up.shopping.for.birthday.gifts.at.the.last.minute"                                         
#[51] "X.GP.17..I.usually.buy.even.an.essential.item.at.the.last.minute"                                                        
#[52] "X.GP.18..I.usually.accomplish.all.the.things.I.plan.to.do.in.a.day"                                                      
#[53] "X.GP.19..I.am.continually.saying.â.œIâ..ll.do.it.tomorrowâ.."                                                            
#[54] "X.GP.20..I.usually.take.care.of.all.the.tasks.I.have.to.do.before.I.settle.down.and.relax.for.the.evening"               
#[55] "X.SWLS.1..In.most.ways.my.life.is.close.to.my.ideal"                                                                     
#[56] "X.SWLS.2.The.conditions.of.my.life.are.excellent"                                                                        
#[57] "X.SWLS.3..I.am.satisfied.with.my.life."                                                                                  
#[58] "X.SWLS.4..So.far.I.have.gotten.the.important.things.I.want.in.life"                                                      
#[59] "X.SWLS.5..If.I.could.live.my.life.over..I.would.change.almost.nothing"                                                   
#[60] "Do.you.consider.yourself.a.procrastinator."                                                                              
#[61] "Do.others.consider.you.a.procrastinator."                                                                                

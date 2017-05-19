## Getting and Cleaning Data Project
## 10 May 2017
## Kea Duckenfield
## The purpose of this script is to create a tidy data set from the
## Human Activity Recognition Using Smartphones Dataset files.

library(dplyr)

## The first requirement is to combine the training and testing data.

## Append the column headesr and subject and activity variables to the 
## training data:
## 1. Read in the file "features.txt," and transpose it:
feat <- read.table("features.txt", stringsAsFactors = FALSE)
featxpose <- t(feat)
## 2. Convert to data table and remove first row (integer count):
featxpdt <- tbl_df(featxpose)
featcols <- featxpdt[2,]
## 3. Import the training data, append column names, convert to data table:
train <- read.table("train/X_train.txt", header = FALSE, col.names = featcols)
traindt <- tbl_df(train)
## 4. Import subject and activity variables, convert, append, add headers:
trainsubs <- read.table("train/subject_train.txt", header = FALSE)
trsubsdt <- tbl_df(trainsubs)
trainacts <- read.table("train/y_train.txt", header = FALSE)
tractsdt <- tbl_df(trainacts)
trvars <- cbind(trsubsdt, tractsdt)
headers <- c("subjectid", "activityid")
colnames(trvars) <- headers
## 5. Append subject and activity variables to the training data:
trcomplete <- cbind(trvars, traindt)
trcompdt <- tbl_df(trcomplete)

## Repeat the process with the testing data:
## Note, can reuse featcols
## 3. Import the testing data, append column names, convert to data table:
test <- read.table("test/X_test.txt", header = FALSE, col.names = featcols)
testdt <- tbl_df(test)
## 4. Import subject and activity variables, convert, append, add headers:
testsubs <- read.table("test/subject_test.txt", header = FALSE)
tesubsdt <- tbl_df(testsubs)
testacts <- read.table("test/y_test.txt", header = FALSE)
teactsdt <- tbl_df(testacts)
tevars <- cbind(tesubsdt, teactsdt)
## Note, can reuse headers
colnames(tevars) <- headers
## 5. Append subject and activity variables to the training data:
tecomplete <- cbind(tevars, testdt)
tecompdt <- tbl_df(tecomplete)

## Combine the training and testing data into a single data table:
raw <- rbind(trcompdt, tecompdt)

## The second requirement is to extract only the means and 
## standard deviations of measurements.
  ## 1. Subset out the means:
  rawmeans <- raw[grep("\\bmean\\b",names(raw),value = TRUE)]
  ## 2. Subset out the standard deviations:
  rawstds <- raw[grep("std", names(raw), value = TRUE)]
  ## 3. SUbset out the subject and activity variables:
  rawids <- raw[grep("id", names(raw), value = TRUE)]
  ## 4. Combine the subject and activity, means, and standard deviations; 
  ## convert to data table:
  meanstd <- cbind(rawids, rawmeans, rawstds)
  msdt <- tbl_df(meanstd)

## The third and fourth requirements are to use descriptive terms for 
## activity values and variable names.  

## Substitute descriptive terms for the numbers denoting activities in the date:
msdt$activityid[msdt$activityid == 1] <- "walking"
msdt$activityid[msdt$activityid == 2] <- "climbing"
msdt$activityid[msdt$activityid == 3] <- "descending"
msdt$activityid[msdt$activityid == 4] <- "sitting"
msdt$activityid[msdt$activityid == 5] <- "standing"
msdt$activityid[msdt$activityid == 6] <- "lying"

## Label the data set with descriptive variable names. 
## Actually I can't improve on the variable names, so I'm just going to remove 
## the surplus dots:
names(msdt) <- gsub("\\.", "", names(msdt))

## The fifth requirement is to create a second tidy data set that contains 
## the average of each variable for each activity and each subject.

  ## 1. Use aggregate() to calculate the mean for each variable by subjectid 
  ## and activityid:
  attach(msdt)
  msdfagg <- aggregate(msdt, by = list(activityid, subjectid), FUN = mean)
  detach(msdt)
  msdtagg <- tbl_df(msdfagg)

  ## This approach results in many warnings and a funny-looking data set, so 
  ## tidy it up:
  ## 2. Remove the unuseful but correctly headed columns "subjectid" and 
  ## "activityid":
  msdtaggrm <- select(msdtagg, -subjectid, -activityid)
  ## 3. Rename the incorrectly headed columns: Group 1 -> "subjectid", 
  ## Group 2 -> "activityid":
  names(msdtaggrm)[names(msdtaggrm)=="Group.1"] <- "activityid"
  names(msdtaggrm)[names(msdtaggrm)=="Group.2"] <- "subjectid"
  ## 4. And finally, switch the first two columns:
  msdtfinal<-msdtaggrm %>% select(subjectid, everything())
  ## Note, actually this moves the subjectid column to the first position.
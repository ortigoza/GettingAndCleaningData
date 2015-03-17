setwd("../Downloads/getdata-projectfiles-UCI HAR Dataset/")
library(data.table)

#STEP 0: Read files
#Read files froms TEST
DTSubjectTest <- data.table((read.table("UCI HAR Dataset//test//subject_test.txt")))
DTTest <- data.table((read.table("UCI HAR Dataset//test//X_test.txt")))
DTLabelTest <- data.table((read.table("UCI HAR Dataset//test//y_test.txt")))

#Read files from TRAIN
DTSubjectTrain <- data.table((read.table("UCI HAR Dataset/train/subject_train.txt")))
DTTrain <- data.table((read.table("UCI HAR Dataset/train/X_train.txt")))
DTLabelTrain <- data.table((read.table("UCI HAR Dataset/train/y_train.txt")))

#STEP 1: Merges the training and the test sets to create one data set.
#STEP 1a: Merge Subjects
l <- list(DTSubjectTest, DTSubjectTrain)
DTSubject<- rbindlist(l, use.names=FALSE, fill=FALSE)
setnames(DTSubject, 1, "Subject")
rm(DTSubjectTest, DTSubjectTrain,l)

#STEP 1b: Merge sets
l <- list(DTTest, DTTrain)
DTSet <- rbindlist(l, use.names=FALSE, fill=FALSE)
rm(DTTest, DTTrain,l)

#STEP 1c: Merge labels of activity
l <- list(DTLabelTest, DTLabelTrain)
DTLabelActivity <- rbindlist(l, use.names=FALSE, fill=FALSE)
setnames(DTLabelActivity, 1, "ActivityNum")
rm(DTLabelTest, DTLabelTrain,l)


#STEP 2 Extracts only the measurements on the mean and standard deviation 
#for each measurement.
#STEP 2a: Read the features.txt into a DataTable with 2 coulumns  
DTNames <- data.table(read.table("UCI HAR Dataset/features.txt", sep=""))

#STEP 2b: Use the regex to find the pattern 'mean() or std()' then return 
#just who have that string
DTVectorTrue <- DTNames[grep("mean\\(\\)|std\\(\\)", DTNames$V2, value=FALSE)]
columnsTrue <- DTVectorTrue$V1

#STEP 2c: Subset the 563 variables DT with only who has 'mean() or std()'
DTStep2 <- DTSet[, c(paste0("V", columnsTrue)), with=FALSE]
rm(columnsTrue, DTNames)

#STEP3 Uses descriptive activity names to name the activities in the data set
#STEP 3a: Read files
DTActNames <- data.table(read.table("UCI HAR Dataset/activity_labels.txt"))

#STEP 3b: Name, then merge the named data to DTStep2 set to generate DTStep3
setnames(DTActNames, names(DTActNames), c("ActivityNum", "ActivityName"))


#STEP 4 Appropriately labels the data set with descriptive variable names. 
DTVectorTrue$V2 <- gsub("\\(|\\)", "", as.matrix(DTVectorTrue$V2))
DTVectorTrue$V2 <- gsub("std", "SD", as.matrix(DTVectorTrue$V2))
DTStep4 <- setNames(DTStep2, as.vector(DTVectorTrue$V2))

#STEP 4-5 Order, concatenate, merge previous variables and clean variables
#Add by columns to DTStep4
DTStep4$Subject <- DTSubject$Subject
DTStep4$ActivityNum <- DTLabelActivity$ActivityNum
rm(DTSubject, DTLabelActivity)

DTStep4 <- merge(x=DTStep4, y=DTActNames, by="ActivityNum", all=TRUE)
rm(DTActNames)
rm(DTSet, DTStep2, DTVectorTrue)
DTStep5 <- DTStep4

#STEP 5 From the data set in step 4, creates a second, independent tidy data set
#with the average of each variable for each activity and each subject.

#Using dplyr library - learned in swirl assignment
library(dplyr)
tbl_Step5 <- tbl_df(DTStep4)
by_SubjectActivity <- 
  tbl_Step5 %>%
  group_by(Subject, ActivityNum, ActivityName) %>% 
  summarise_each(funs(mean))

write.table(by_SubjectActivity, file="tidyData.txt", row.name=FALSE)
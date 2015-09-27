### You should create one R script called run_analysis.R that does the following. 
library(dplyr)
library(reshape2)

#You  may need to include this line depending on how the data is set in your directory
#setwd("UCI_HAR_Dataset")

### 1. Merges the training and the test sets to create one data set.
#get activity labels
activityLabels<-read.table("activity_labels.txt",col.names = c("activity_label","activity"))

#get feature list
features<-select(read.table("features.txt",col.names = c("id","feature")),feature)

#get training set data
trainFeatures<-read.table("train/X_train.txt")
names(trainFeatures)<-features$feature
trainActivity<-read.table("train/y_train.txt",col.names = "activity_label")
trainSubject<-read.table("train/subject_train.txt",col.names="subject")

#get test set data
testFeatures<-read.table("test/X_test.txt")
names(testFeatures)<-features$feature
testActivity<-read.table("test/y_test.txt",col.names = "activity_label")
testSubject<-read.table("test/subject_test.txt",col.names="subject")

allFeatures<-rbind(trainFeatures,testFeatures)
allSubject<-rbind(trainSubject,testSubject)
allActivity<-rbind(trainActivity,testActivity)

allCombined<-cbind(allSubject,allActivity,allFeatures)

##clearing these weird duplicates since we don't need them anyway
##originally 461:502 but i added subject/activity at the beginning
allCombined<-allCombined[-c(463:504)]

### Extracts only the measurements on the mean and standard deviation for each measurement. 
allCombined<-select(allCombined,subject,activity_label,contains("mean()"),contains("std()"))

### Uses descriptive activity names to name the activities in the data set
allCombined<-merge(allCombined,activityLabels,by.x="activity_label",by.y="activity_label")
#get rid of the now extraneous label
allCombined<-select(allCombined,-activity_label)

### Appropriately labels the data set with descriptive variable names. 
#clearing these up based on descriptions in features_info.txt
names(allCombined)<-gsub("^t","time",names(allCombined))
names(allCombined)<-gsub("^f","frequency",names(allCombined))
names(allCombined)<-gsub("Acc","Accelerometer",names(allCombined))
names(allCombined)<-gsub("Gyro","Gyroscope",names(allCombined))
names(allCombined)<-gsub("Mag","Magnitude",names(allCombined))
#not sure where these came from but i assume the extra body doesnt mean anything special
names(allCombined)<-gsub("BodyBody","Body",names(allCombined))

### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
averages<-allCombined%>%
  group_by(activity,subject)%>%
  summarise_each("mean")

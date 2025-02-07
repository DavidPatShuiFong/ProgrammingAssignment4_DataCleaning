### 'run_analysis.R', Homework Week 4
### written by David Fong for 'Getting and Cleaning Data'

### read data from UCI Machine Learning Repository
### http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### downloaded from
### https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
### and then extracted into current working directory

library(dplyr)
library(tidyr)
library(stringr)

### move into the Dataset's directory, and then read raw data into tables
basedirectory <- getwd()
setwd('UCI HAR Dataset/') 

### activities are numbered 1 to 6, activitylabels contains the key/name
### 561 different features of the recordings measurements, featureslabels contains the key/name
activitylabels <- read.table('activity_labels.txt')
featureslabels <- read.table('features.txt')

### read data for the test and train groups

### testsubjects/trainsubjects contains the subject IDs
### testfeatures/trainfeatures contains various summary information about gathered data
### testactivity/trainactivity contains the activity code (e.g. '2' for 'walking upstairs') for each gathered data 
### (the raw data is contained in 'Inertial Signals' folder but is unnecessary for this project)

testsubjects <- read.table('test/subject_test.txt')
testfeatures <- read.table('test/X_test.txt')
testactivity <- read.table('test/y_test.txt')

trainsubjects <- read.table('train/subject_train.txt')
trainfeatures <- read.table('train/X_train.txt')
trainactivity <- read.table('train/y_train.txt')

### return to base directory
setwd(basedirectory)

### label the data sets with descriptive variable names
### *** Assignment task 4 ***

### label the features (of measurements) columns
### change column names to be more consistent or human readable (using str_replace_all from 'stringr')
### make the features labels valid column names, strip all periods and underscores
### then add the column names to the features tables
featureslabels[,2] <- featureslabels[,2] %>%
  str_replace_all(c('Acc'='Acceleration','Gyro'='AngularVelocity','Mag'='Magnitude','jerk'='Jerk',
                    'mean'='Mean','std'='StandardDeviation')) %>%
  make.names(unique=TRUE,allow_=FALSE) %>%
  str_replace_all(c('\\.'='')) ### need to remove periods last, as make.names creates periods '.'

colnames(testfeatures) <- featureslabels[,2]
colnames(trainfeatures) <- featureslabels[,2]

### add names to columns for subjectID and activity
### each subject is either a test subject or train subject
### subject numbers vary from 1 to 30
colnames(testsubjects) <- 'subjectID'
colnames(trainsubjects) <- 'subjectID'

colnames(testactivity) <- 'activity'
colnames(trainactivity) <- 'activity'

### combine the data from the test subjects and train subjects into
### two tables, one for test and one for train
testtable <- as_tibble(cbind(testsubjects,testactivity,testfeatures))
traintable <- as_tibble(cbind(trainsubjects,trainactivity,trainfeatures))

### add new column to identify whether data was from 'test' subject
### or 'train' subject
testtable$group <- 'test'
traintable$group <- 'train'

### combine the test and train sets into single combined table
### no overlapping data, as subjects are completely different
### between the test and train tables
### *** Assignment task 1 ***
combineddata <- full_join(testtable,traintable)

### remove the 'features' measurements which do not contain std or mean values
### find the labels which contain mean or std (case insensitive), and then the complement labels
stdmeanlabel <- grepl('mean|standarddeviation',featureslabels[,2],ignore.case = TRUE)

### remove the features labels which don't have mean or std
### *** Assignment task 2 ***
combineddata <- combineddata[,-which(names(combineddata) %in% featureslabels[!stdmeanlabel,2])]

### use descriptive activity names to name the activities in the data set
### *** Assignment task 3 ***
combineddata <- mutate(combineddata, activity=activitylabels[activity,2])

### create tidy summary of retained features (those with 'std' and 'mean')
### 'average of each variable for each activity and each subject'
### group by subjectID and activity
### *** Assignment task 5 ***

### define features to be summarized
### creates two vectors, first with the mean() function, the second with the column name
summarizefunction <- paste0('mean(',featureslabels[stdmeanlabel,2],')')
summarizefeature <- paste0(featureslabels[stdmeanlabel,2])

### define the grouping
combineddata <- group_by(combineddata,subjectID,group,activity)

### summarize combineddata
### define (multiple) columns and means to calculate with standard evaluation
### using 'summarize_()' standard evaluation version of 'summarize()'
### then 'tidy' up data by gathering average(/mean) of different features measurements into their own row
### (preserving 'subjectID' and 'activity' and 'group' columns)
### then sort the data according to subjectID, activity and feature
summarytable <- combineddata %>%
  summarize_(.dots = setNames(summarizefunction,summarizefeature)) %>%
  gather(feature,mean,-c('subjectID','activity','group')) %>%
  arrange(subjectID,activity,feature)

### output a copy of the tables generated
write.table(combineddata,file="aggregate_data.txt",row.names=FALSE)
write.table(summarytable,file="summary_means.txt",row.names=FALSE)

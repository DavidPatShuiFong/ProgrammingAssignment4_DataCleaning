'run_analysis.R' codebook

* read data from UCI Machine Learning Repository
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and then extracted into current working directory

* read label data from files in 'UCI HAR Dataset' directory
** read column labels for the 'features' data into 'featureslabels'
** read activity descriptions into 'activitylabels'

* read measurement data from files in 'UCI HAR Dataset' directory
** for participants in test group read subject identifiers 'testsubjects', test subject activity 'testactivity', and the measurements 'testfeatures'
** for participants in train group read subject identifiers 'trainsubjects', test subject activity 'trainactivity', and the measurements 'trainfeatures'

*column names are added to the data tables
** 'features' labels are modified to suitable column names for R and readability e.g. removal of brackets, periods and underscores

*combine all 'test' tables into 'testtable' and combine all 'train' tables into 'traintable'
*add a 'group' column to identify data as originally coming from a 'test' or 'train' participant

*join 'testtable' and 'traintable' into a combined table 'combineddata'

*retain all of the original 'features' columns in combineddata which include 'std' or 'mean' in the label. remove all 'features' columns which do not include 'std' or 'mean' in the name
** stdmeanlabel is a TRUE/FALSE vector of all featureslabels which include 'std/Std' or 'mean/Mean'
** notstdmeanlabel is a TRUE/FALSE vector of all featureslabels which do not include 'std/Std' or 'mean/Mean'

* change the activity column in combineddata to a descriptive factor e.g. 'WALKING' or 'SITTING'

* group combineddata by subjectID, group and activity

* create summarizefunction,summarizefeature variables to aid in creating a summary table with all relevant columns. these variables contain the function to calculate the mean of the retained feature columns and the column names

* create a summary table
** means are calculated for each of the retained 'features' which include 'mean' or 'std' in the name
** the table is 'tidied' by gathering each calculated 'mean' into its own row
** each row is identified by subjectID, group (either 'test' or 'train), activity and 'feature' measurement type

* creates tables are written to files
** summary table is written to 'summary_means.csv'
** the combinedtable is written to 'aggregate_data.csv'

written by David Fong for 'Getting and Cleaning Data' Homework Week 4

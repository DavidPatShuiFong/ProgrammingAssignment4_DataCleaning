# ProgrammingAssignment4_DataCleaning

Summarizes data created by Jorges L. Reyes-Ortiz et al, of data created by accelerometers and gyroscopes of smartphones
carried by 30 volunteers. Some of the volunteers were allocated to the 'training' group, and others to the 'test' group.
The volunteers undertook six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

Script : run_analysis.R 
1. merges the summary 'features' data of both training and test groups
2. creates a summary of all measures/features which are 'mean' or 'std'
3. 'tidys' up the dataset, so that all summary measures/features are on individual rows

Resulting table includes the following columns

1. subjectID - original ID (1 to 30) of the study participants
2. group - whether the participant was in the 'train' or 'test' group
3. activity - the activity during the measurements, one of 'WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING'
4. feature - one of 86 'feature' measurements, either a mean or std (standard deviation)
5. mean - mean of the all of the feature measurements groups for the relevant subject and activity

* see **summary_means.csv** for result of the summarization
* see **aggregate_data.csv** for 'untidy' version of the combined data, before the means are calculated
* see **Codebook.md** for more details about the output data in **summary_means.csv**
* see **README.txt** for more details about the eight-six 'feature' types

## Detailed description of run_analysis.R follows:

* data from UCI Machine Learning Repository
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis steps and variables

* read label data from files in 'UCI HAR Dataset' directory
  * read column labels for the 'features' data into 'featureslabels' from 'features.txt'
  * read activity descriptions into 'activitylabels' from 'activity_labels.txt'

* read measurement data from files in 'UCI HAR Dataset' directory
  * for participants in test group read
    * subject identifiers 'testsubjects' from 'test/subject_test.txt'
    * test subject activity 'testactivity' from 'test/y_test.txt'
    * 'features' measurements 'testfeatures' from 'test/X_test.txt'
  * for participants in train group read subject identifiers 'trainsubjects', subject activity 'trainactivity', and the measurements 'trainfeatures' from the 'train' directory. similar filenames to 'test' subjects

* column names are added to the data tables
 * 'features' labels are modified to suitable column names for R and readability e.g. removal of brackets, periods and underscores

* combine all 'test' tables into 'testtable' and combine all 'train' tables into 'traintable'
* add a 'group' column to identify data as originally coming from a 'test' or 'train' participant

* join 'testtable' and 'traintable' into a combined table 'combineddata'

* retain all of the original 'features' columns in combineddata which include 'std' or 'mean' in the label. remove all 'features' columns which do not include 'std' or 'mean' in the name
  * stdmeanlabel is a TRUE/FALSE vector of all featureslabels which include 'std/Std' or 'mean/Mean'
  * notstdmeanlabel is a TRUE/FALSE vector of all featureslabels which do not include 'std/Std' or 'mean/Mean'

* change the activity column in combineddata to a descriptive factor e.g. 'WALKING' or 'SITTING'

* group combineddata by subjectID, group and activity

* create summarizefunction,summarizefeature variables to aid in creating a summary table with all relevant columns. these variables contain the function to calculate the mean of the retained feature columns and the column names

* create a summary table
  * means are calculated for each of the retained 'features' which include 'mean' or 'std' in the name
  * the table is 'tidied' by gathering each calculated 'mean' into its own row
  * each row has **subjectID**, **activity** and **feature** columns describing the data calculated in the **mean** column. each row also has a **group** column identifying the subject's source group.
    * **subjectID** - identifier for test subjects, 1 to 30
    * **activity** - description of activity during measurement
      * one of 'STANDING', 'SITTING', 'LAYING', 'WALKING', 'WALKING_DOWNSTAIRS', 'WALKING_UPSTAIRS'
    * **feature** - measurement being taken, eight-six different measurements, see README.txt for more details
    * **group** - the subject came either from the 'test' or 'train' group
    * **mean** - the mean of the **feature** for the **subjectID** doing **activity**

* creates tables are written to files
  * summarytable is written to 'summary_means.csv'
  * combinedtable is written to 'aggregate_data.csv'

David Fong

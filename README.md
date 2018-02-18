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
* see **Codebook.md** for more details about the data transformation done by run_analysis.R 
* see **README.txt** for more details about the eight-six 'feature' types

David Fong

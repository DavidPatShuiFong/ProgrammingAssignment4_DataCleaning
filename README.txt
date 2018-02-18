R processing file 'run_analysis.R' to create summary data of Human Activity Recognition Using Smartphone Dataset (version 1.0)

Summarizes data created by Jorges L. Reyes-Ortiz et al, of data created by accelerometers and gyroscopes of smartphones
carried by 30 volunteers. Some of the volunteers were allocated to the 'training' group, and others to the 'test' group.
The volunteers undertook six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

run_analysis.R merges the summary 'features' data of both training and test groups, creates a summary of all measures/features
which are 'mean' or 'std', and then 'tidys' up the dataset.

Resulting table includes the following columns

subjectID - original ID (1 to 30) of the study participants
group - whether the participant was in the 'train' or 'test' group
activity - the activity during the measurements, one of 'WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING'
feature - one of 86 'feature' measurements, either a mean or std (standard deviation)
mean - mean of the all of the feature measurements groups for the relevant subject and activity

List of features shown below

 [1] "angletBodyAccJerkMeangravityMean" 
 [2] "angletBodyAccMeangravity"         
 [3] "angletBodyGyroJerkMeangravityMean"
 [4] "angletBodyGyroMeangravityMean"    
 [5] "angleXgravityMean"                
 [6] "angleYgravityMean"                
 [7] "angleZgravityMean"                
 [8] "fBodyAccJerkmeanFreqX"            
 [9] "fBodyAccJerkmeanFreqY"            
[10] "fBodyAccJerkmeanFreqZ"            
[11] "fBodyAccJerkmeanX"                
[12] "fBodyAccJerkmeanY"                
[13] "fBodyAccJerkmeanZ"                
[14] "fBodyAccJerkstdX"                 
[15] "fBodyAccJerkstdY"                 
[16] "fBodyAccJerkstdZ"                 
[17] "fBodyAccMagmean"                  
[18] "fBodyAccMagmeanFreq"              
[19] "fBodyAccMagstd"                   
[20] "fBodyAccmeanFreqX"                
[21] "fBodyAccmeanFreqY"                
[22] "fBodyAccmeanFreqZ"                
[23] "fBodyAccmeanX"                    
[24] "fBodyAccmeanY"                    
[25] "fBodyAccmeanZ"                    
[26] "fBodyAccstdX"                     
[27] "fBodyAccstdY"                     
[28] "fBodyAccstdZ"                     
[29] "fBodyBodyAccJerkMagmean"          
[30] "fBodyBodyAccJerkMagmeanFreq"      
[31] "fBodyBodyAccJerkMagstd"           
[32] "fBodyBodyGyroJerkMagmean"         
[33] "fBodyBodyGyroJerkMagmeanFreq"     
[34] "fBodyBodyGyroJerkMagstd"          
[35] "fBodyBodyGyroMagmean"             
[36] "fBodyBodyGyroMagmeanFreq"         
[37] "fBodyBodyGyroMagstd"              
[38] "fBodyGyromeanFreqX"               
[39] "fBodyGyromeanFreqY"               
[40] "fBodyGyromeanFreqZ"               
[41] "fBodyGyromeanX"                   
[42] "fBodyGyromeanY"                   
[43] "fBodyGyromeanZ"                   
[44] "fBodyGyrostdX"                    
[45] "fBodyGyrostdY"                    
[46] "fBodyGyrostdZ"                    
[47] "tBodyAccJerkMagmean"              
[48] "tBodyAccJerkMagstd"               
[49] "tBodyAccJerkmeanX"                
[50] "tBodyAccJerkmeanY"                
[51] "tBodyAccJerkmeanZ"                
[52] "tBodyAccJerkstdX"                 
[53] "tBodyAccJerkstdY"                 
[54] "tBodyAccJerkstdZ"                 
[55] "tBodyAccMagmean"                  
[56] "tBodyAccMagstd"                   
[57] "tBodyAccmeanX"                    
[58] "tBodyAccmeanY"                    
[59] "tBodyAccmeanZ"                    
[60] "tBodyAccstdX"                     
[61] "tBodyAccstdY"                     
[62] "tBodyAccstdZ"                     
[63] "tBodyGyroJerkMagmean"             
[64] "tBodyGyroJerkMagstd"              
[65] "tBodyGyroJerkmeanX"               
[66] "tBodyGyroJerkmeanY"               
[67] "tBodyGyroJerkmeanZ"               
[68] "tBodyGyroJerkstdX"                
[69] "tBodyGyroJerkstdY"                
[70] "tBodyGyroJerkstdZ"                
[71] "tBodyGyroMagmean"                 
[72] "tBodyGyroMagstd"                  
[73] "tBodyGyromeanX"                   
[74] "tBodyGyromeanY"                   
[75] "tBodyGyromeanZ"                   
[76] "tBodyGyrostdX"                    
[77] "tBodyGyrostdY"                    
[78] "tBodyGyrostdZ"                    
[79] "tGravityAccMagmean"               
[80] "tGravityAccMagstd"                
[81] "tGravityAccmeanX"                 
[82] "tGravityAccmeanY"                 
[83] "tGravityAccmeanZ"                 
[84] "tGravityAccstdX"                  
[85] "tGravityAccstdY"                  
[86] "tGravityAccstdZ" 




----------------------------------------------------------------------------------------------------------------------
Original README of the Human Activity Recognition Using Smartphone Dataset follows:



==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

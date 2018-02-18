# 'run_analysis.R' codebook

* data from UCI Machine Learning Repository
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


for run_analysis steps and variables see **README.md**.
for an example output file see **summary_means.txt**

* each row has **subjectID**, **activity** and **feature** columns describing the data calculated in the **mean** column. each row also has a **group** column identifying the subject's source group.
  * **subjectID** - identifier for test subjects, 1 to 30
  * **activity** - description of activity during measurement
    * one of 'STANDING', 'SITTING', 'LAYING', 'WALKING', 'WALKING_DOWNSTAIRS', 'WALKING_UPSTAIRS'
  * **feature** - measurement being taken, eight-six different measurements, see below for more details
  * **group** - the subject came either from the 'test' or 'train' group
  * **mean** - the mean of the **feature** for the **subjectID** doing **activity**

## 'feature' measurement list

*note that the names have been **translated** from the original 'feature' names*

translation is as follows:
* all non-alphanumerics removed including periods
* translated abbreviations as follows : 'Acc'->'Acceleration','Gyro'->'AngularVelocity','Mag'->'Magnitude','jerk'->'Jerk','std'->'StandardDeviation'

 [1] "tBodyAccelerationMeanX"                                 "tBodyAccelerationMeanY"                                
 [3] "tBodyAccelerationMeanZ"                                 "tBodyAccelerationStandardDeviationX"                   
 [5] "tBodyAccelerationStandardDeviationY"                    "tBodyAccelerationStandardDeviationZ"                   
 [7] "tGravityAccelerationMeanX"                              "tGravityAccelerationMeanY"                             
 [9] "tGravityAccelerationMeanZ"                              "tGravityAccelerationStandardDeviationX"                
[11] "tGravityAccelerationStandardDeviationY"                 "tGravityAccelerationStandardDeviationZ"                
[13] "tBodyAccelerationJerkMeanX"                             "tBodyAccelerationJerkMeanY"                            
[15] "tBodyAccelerationJerkMeanZ"                             "tBodyAccelerationJerkStandardDeviationX"               
[17] "tBodyAccelerationJerkStandardDeviationY"                "tBodyAccelerationJerkStandardDeviationZ"               
[19] "tBodyAngularVelocityMeanX"                              "tBodyAngularVelocityMeanY"                             
[21] "tBodyAngularVelocityMeanZ"                              "tBodyAngularVelocityStandardDeviationX"                
[23] "tBodyAngularVelocityStandardDeviationY"                 "tBodyAngularVelocityStandardDeviationZ"                
[25] "tBodyAngularVelocityJerkMeanX"                          "tBodyAngularVelocityJerkMeanY"                         
[27] "tBodyAngularVelocityJerkMeanZ"                          "tBodyAngularVelocityJerkStandardDeviationX"            
[29] "tBodyAngularVelocityJerkStandardDeviationY"             "tBodyAngularVelocityJerkStandardDeviationZ"            
[31] "tBodyAccelerationMagnitudeMean"                         "tBodyAccelerationMagnitudeStandardDeviation"           
[33] "tGravityAccelerationMagnitudeMean"                      "tGravityAccelerationMagnitudeStandardDeviation"        
[35] "tBodyAccelerationJerkMagnitudeMean"                     "tBodyAccelerationJerkMagnitudeStandardDeviation"       
[37] "tBodyAngularVelocityMagnitudeMean"                      "tBodyAngularVelocityMagnitudeStandardDeviation"        
[39] "tBodyAngularVelocityJerkMagnitudeMean"                  "tBodyAngularVelocityJerkMagnitudeStandardDeviation"    
[41] "fBodyAccelerationMeanX"                                 "fBodyAccelerationMeanY"                                
[43] "fBodyAccelerationMeanZ"                                 "fBodyAccelerationStandardDeviationX"                   
[45] "fBodyAccelerationStandardDeviationY"                    "fBodyAccelerationStandardDeviationZ"                   
[47] "fBodyAccelerationMeanFreqX"                             "fBodyAccelerationMeanFreqY"                            
[49] "fBodyAccelerationMeanFreqZ"                             "fBodyAccelerationJerkMeanX"                            
[51] "fBodyAccelerationJerkMeanY"                             "fBodyAccelerationJerkMeanZ"                            
[53] "fBodyAccelerationJerkStandardDeviationX"                "fBodyAccelerationJerkStandardDeviationY"               
[55] "fBodyAccelerationJerkStandardDeviationZ"                "fBodyAccelerationJerkMeanFreqX"                        
[57] "fBodyAccelerationJerkMeanFreqY"                         "fBodyAccelerationJerkMeanFreqZ"                        
[59] "fBodyAngularVelocityMeanX"                              "fBodyAngularVelocityMeanY"                             
[61] "fBodyAngularVelocityMeanZ"                              "fBodyAngularVelocityStandardDeviationX"                
[63] "fBodyAngularVelocityStandardDeviationY"                 "fBodyAngularVelocityStandardDeviationZ"                
[65] "fBodyAngularVelocityMeanFreqX"                          "fBodyAngularVelocityMeanFreqY"                         
[67] "fBodyAngularVelocityMeanFreqZ"                          "fBodyAccelerationMagnitudeMean"                        
[69] "fBodyAccelerationMagnitudeStandardDeviation"            "fBodyAccelerationMagnitudeMeanFreq"                    
[71] "fBodyBodyAccelerationJerkMagnitudeMean"                 "fBodyBodyAccelerationJerkMagnitudeStandardDeviation"   
[73] "fBodyBodyAccelerationJerkMagnitudeMeanFreq"             "fBodyBodyAngularVelocityMagnitudeMean"                 
[75] "fBodyBodyAngularVelocityMagnitudeStandardDeviation"     "fBodyBodyAngularVelocityMagnitudeMeanFreq"             
[77] "fBodyBodyAngularVelocityJerkMagnitudeMean"              "fBodyBodyAngularVelocityJerkMagnitudeStandardDeviation"
[79] "fBodyBodyAngularVelocityJerkMagnitudeMeanFreq"          "angletBodyAccelerationMeangravity"                     
[81] "angletBodyAccelerationJerkMeangravityMean"              "angletBodyAngularVelocityMeangravityMean"              
[83] "angletBodyAngularVelocityJerkMeangravityMean"           "angleXgravityMean"                                     
[85] "angleYgravityMean"                                      "angleZgravityMean"  

-----------------------------------

the following description of 'feature' measurements is from the original feature_info.txt

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

---------------------------------------------

written by David Fong for 'Getting and Cleaning Data' Homework Week 4

# 'run_analysis.R' codebook

* data from UCI Machine Learning Repository
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


for run_analysis steps and variables see **README.md**
for an example output file see **summary_means.txt**

* each row has **subjectID**, **activity** and **feature** columns describing the data calculated in the **mean** column. each row also has a **group** column identifying the subject's source group.
  * **subjectID** - identifier for test subjects, 1 to 30
  * **activity** - description of activity during measurement
    * one of 'STANDING', 'SITTING', 'LAYING', 'WALKING', 'WALKING_DOWNSTAIRS', 'WALKING_UPSTAIRS'
  * **feature** - measurement being taken, eight-six different measurements, see below for more details
  * **group** - the subject came either from the 'test' or 'train' group
  * **mean** - the mean of the **feature** for the **subjectID** doing **activity**

## 'feature' measurement list

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

# Codebook
###Description
This Dataset comes from apply the run_analysis.R script to the proposed datasets into the Getting and Cleaning Data Project.

The codebook was generated in .Rd format by invoking *prompt(by_SubjectActivity)* 
###Format
A data frame with 180 observations on the following 69 variables

**Subject** *(a numeric vector)*

**ActivityNum** *(a numeric vector)*

**ActivityName** *(a factor with levels LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)*

**tBodyAcc-mean-X** *(a numeric vector)*

**tBodyAcc-mean-Y** *(a numeric vector)*

**tBodyAcc-mean-Z** *(a numeric vector)*

**tBodyAcc-SD-X** *(a numeric vector)*
  
**tBodyAcc-SD-Y** *(a numeric vector)*

**tBodyAcc-SD-Z** *(a numeric vector)*

**tGravityAcc-mean-X** *(a numeric vector)*

**tGravityAcc-mean-Y** *(a numeric vector)*

**tGravityAcc-mean-Z** *(a numeric vector)*

**tGravityAcc-SD-X** *(a numeric vector)*

**tGravityAcc-SD-Y** *(a numeric vector)*

**tGravityAcc-SD-Z** *(a numeric vector)*

**tBodyAccJerk-mean-X** *(a numeric vector)*

**tBodyAccJerk-mean-Y** *(a numeric vector)*

**tBodyAccJerk-mean-Z** *(a numeric vector)*

**tBodyAccJerk-SD-X** *(a numeric vector)*

**tBodyAccJerk-SD-Y** *(a numeric vector)*

**tBodyAccJerk-SD-Z** *(a numeric vector)*

**tBodyGyro-mean-X** *(a numeric vector)*

**tBodyGyro-mean-Y** *(a numeric vector)*

**tBodyGyro-mean-Z** *(a numeric vector)*

**tBodyGyro-SD-X** *(a numeric vector)*

**tBodyGyro-SD-Y** *(a numeric vector)*

**tBodyGyro-SD-Z** *(a numeric vector)*

**tBodyGyroJerk-mean-X** *(a numeric vector)*

**tBodyGyroJerk-mean-Y** *(a numeric vector)*

**tBodyGyroJerk-mean-Z** *(a numeric vector)*

**tBodyGyroJerk-SD-X** *(a numeric vector)*

**tBodyGyroJerk-SD-Y** *(a numeric vector)*

**tBodyGyroJerk-SD-Z** *(a numeric vector)*

**tBodyAccMag-mean** *(a numeric vector)*

**tBodyAccMag-SD** *(a numeric vector)*

**tGravityAccMag-mean** *(a numeric vector)*

**tGravityAccMag-SD** *(a numeric vector)*

**tBodyAccJerkMag-mean** *(a numeric vector)*

**tBodyAccJerkMag-SD** *(a numeric vector)*

**tBodyGyroMag-mean** *(a numeric vector)*

**tBodyGyroMag-SD** *(a numeric vector)*

**tBodyGyroJerkMag-mean** *(a numeric vector)*

**tBodyGyroJerkMag-SD** *(a numeric vector)*

**fBodyAcc-mean-X** *(a numeric vector)*

**fBodyAcc-mean-Y** *(a numeric vector)*

**fBodyAcc-mean-Z** *(a numeric vector)*

**fBodyAcc-SD-X** *(a numeric vector)*

**fBodyAcc-SD-Y** *(a numeric vector)*

**fBodyAcc-SD-Z** *(a numeric vector)*

**fBodyAccJerk-mean-X** *(a numeric vector)*

**fBodyAccJerk-mean-Y** *(a numeric vector)*

**fBodyAccJerk-mean-Z** *(a numeric vector)*

**fBodyAccJerk-SD-X** *(a numeric vector)*

**fBodyAccJerk-SD-Y** *(a numeric vector)*

**fBodyAccJerk-SD-Z** *(a numeric vector)*

**fBodyGyro-mean-X** *(a numeric vector)*

**fBodyGyro-mean-Y** *(a numeric vector)*

**fBodyGyro-mean-Z** *(a numeric vector)*

**fBodyGyro-SD-X** *(a numeric vector)*

**fBodyGyro-SD-Y** *(a numeric vector)*

**fBodyGyro-SD-Z** *(a numeric vector)*

**fBodyAccMag-mean** *(a numeric vector)*

**fBodyAccMag-SD** *(a numeric vector)*

**fBodyBodyAccJerkMag-mean** *(a numeric vector)*

**fBodyBodyAccJerkMag-SD** *(a numeric vector)*

**fBodyBodyGyroMag-mean** *(a numeric vector)*

**fBodyBodyGyroMag-SD** *(a numeric vector)*

**fBodyBodyGyroJerkMag-mean** *(a numeric vector)*

**fBodyBodyGyroJerkMag-SD** *(a numeric vector)*

Also, to understand names, the authors gave the following explanation:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>The set of variables that were estimated from these signals are: 

>mean(): Mean value

>std(): Standard deviation


###Source
Original dataset were obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###References
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

###Examples
data(by_SubjectActivity)

View(by_SubjectActivity)

#CodeBook

This file shows information about the variables in the "tidy_data.txt" file.

## Columns

There are 68 columns in the table. They are briefly described here.

### Subject and Activity

The first two columns bring the subject and the activity, respectively. 

The "Subject" field contains a number from 1 to 30 in each row, that represents the volunteer who the metrics were extracted from. 

The "Activity" field represents the activity that the volunteer were doing when the metrics were extracted. Its values can be "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" OR "LAYING".

### Variables

The other 66 columns represent the features required for this project. The definition for each metric can be found in the original "features_info.txt" file, which I quote here:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* vtBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag "

In the original data, there were several variables estimated from the listed signals, but for this project only the mean and the standard deviation for each one were considered.

With the selected variables, the average for each subject and activity was calculated, so that the final columns represent the average of the estimated variable for each subject and activity.

Therefore, the following is a list of the columns in the tidy_data table:

* tBodyAcc mean X - AVG
* tBodyAcc mean Y - AVG
* tBodyAcc mean Z - AVG
* tBodyAcc std X - AVG
* tBodyAcc std Y - AVG
* tBodyAcc std Z - AVG
* tGravityAcc mean X - AVG
* tGravityAcc mean Y - AVG
* tGravityAcc mean Z - AVG
* tGravityAcc std X - AVG
* tGravityAcc std Y - AVG
* tGravityAcc std Z - AVG
* tBodyAccJerk mean X - AVG
* tBodyAccJerk mean Y - AVG
* tBodyAccJerk mean Z - AVG
* tBodyAccJerk std X - AVG
* tBodyAccJerk std Y - AVG
* tBodyAccJerk std Z - AVG
* tBodyGyro mean X - AVG
* tBodyGyro mean Y - AVG
* tBodyGyro mean Z - AVG
* tBodyGyro std X - AVG
* tBodyGyro std Y - AVG
* tBodyGyro std Z - AVG
* tBodyGyroJerk mean X - AVG
* tBodyGyroJerk mean Y - AVG
* tBodyGyroJerk mean Z - AVG
* tBodyGyroJerk std X - AVG
* tBodyGyroJerk std Y - AVG
* tBodyGyroJerk std Z - AVG
* tBodyAccMag mean - AVG
* tBodyAccMag std - AVG
* tGravityAccMag mean - AVG
* tGravityAccMag std - AVG
* tBodyAccJerkMag mean - AVG
* tBodyAccJerkMag std - AVG
* tBodyGyroMag mean - AVG
* tBodyGyroMag std - AVG
* tBodyGyroJerkMag mean - AVG
* tBodyGyroJerkMag std - AVG
* fBodyAcc mean X - AVG
* fBodyAcc mean Y - AVG
* fBodyAcc mean Z - AVG
* fBodyAcc std X - AVG
* fBodyAcc std Y - AVG
* fBodyAcc std Z - AVG
* fBodyAccJerk mean X - AVG
* fBodyAccJerk mean Y - AVG
* fBodyAccJerk mean Z - AVG
* fBodyAccJerk std X - AVG
* fBodyAccJerk std Y - AVG
* fBodyAccJerk std Z - AVG
* fBodyGyro mean X - AVG
* fBodyGyro mean Y - AVG
* fBodyGyro mean Z - AVG
* fBodyGyro std X - AVG
* fBodyGyro std Y - AVG
* fBodyGyro std Z - AVG
* fBodyAccMag mean - AVG
* fBodyAccMag std - AVG
* fBodyBodyAccJerkMag mean - AVG
* fBodyBodyAccJerkMag std - AVG
* fBodyBodyGyroMag mean - AVG
* fBodyBodyGyroMag std - AVG
* fBodyBodyGyroJerkMag mean - AVG
* fBodyBodyGyroJerkMag std - AVG

Each of these columns contains, for each row, the average of the indicated variable for each subject and each activity, indicated by the values in the "Subject" and "Activity" columns, respectively. The units for these values are the same of the original values, which were normalized and bounded within [-1,1].

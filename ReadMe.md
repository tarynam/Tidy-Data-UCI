Experimental Design:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Raw Data:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

These signals were used to estimate variables of the feature vector for each pattern:  

The data file contains the following text files coding each of the raw data componenets.

-'features.txt': List of all features. A 561-feature vector with time and frequency domain variables. 

-'test/X_test.txt' and 'train/X_train.txt': Contain pre-processed values for all features for all subjects doing all activities.

-'train/subject_train.txt' and 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

-'train/y_train.txt' and 'test/y_test.txt': Activity Labels.

-'activity_labels.txt': Links the class labels with their activity name.
A list of activity labels. 

Processed Data:
The original data set was split between "training" and "test" sets. Subject Identifiers were aligned with activity labels and "feature" values for each of the test and train sets to create two dataframes with 563 columns, after which the test and train sets were concatenated.

The feature names were read in and extracted from a table to create a list of 561 variable labels. The names of the columns of the dataframes were updated to reflect the subject ID column, the activity column and the features list for the complete dataframe. Additionally, modifications to the feature names were introduced for clarity. "t" was updated to "time", "f" was updated to "freq", and typographical errors were removed.

The column containing activity labels was updated to use the descriptive activity names (in the activity_labels text file) to label the activities in the data frame.
##Course Project Code Book
#Description of the Dataset
The dataset was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and placed
in a directory on the local drive. 
Anguita, Ghio, Oneto, Parra, & Reyes-Ortiz (2012) collected data from a group of 30 19-48 year-old volunteers in which each person performed six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) as they wore a smartphone (Samsung Galaxy S II) on the waist. 
Using the phone's embedded accelerometer and gyroscope,  data on 3-axial linear acceleration and 3-axial angular velocity at 
a constant rate of 50Hz were collected. The experiments were video-recorded for manual data labelling. The obtained dataset was 
randomly partitioned into two sets: 70% of the volunteers generated the training data and 30% generated the test data. Further description of the data
can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

#Description of the Variables
The dataset includes the following files:
*README.txt
*features_info.txt: Information about the variables used on the feature vector.
*features.txt: List of all features.
*activity_labels.txt: Links the class labels with their activity name.
*train/X_train.txt: Training set.
*train/y_train.txt: Training labels.
*test/X_test.txt: Test set.
*test/y_test.txt: Test labels.

Files for the train and test data:
*train/subject_train.txt: Identification of subject who performed the activity for each window sample. Range: 1 to 30.
*train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from the smartphone accelerometer X axis. Unit of measurement: standard gravity units 'g'. 
Every row shows a 128 element vector. 
The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
*train/Inertial Signals/body_acc_x_train.txt: The body acceleration signal obtained by subtracting the gravity from the total acceleration.
*train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector measured by the gyroscope for each window sample. Unit of measurement: radians/second.

#Transformation Details
A script entitled run_analysis.R was created in the parent folder of the dataset.  The script utilizes the data.table and reshape2 libraries.
This script does the following:
* Merges the training and the test data to create one data set.
* Extracts the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates an independent tidy data set with the average of each variable for each activity and each subject.


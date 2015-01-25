##Getting and Cleaning Data Course Project
#Description of the Dataset
The dataset was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and placed
in a directory on the local drive. 
Anguita, Ghio, Oneto, Parra, & Reyes-Ortiz (2012) collected data from a group of 30 19-48 year-old volunteers in which each person performed six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) as they wore a smartphone (Samsung Galaxy S II) on the waist. 
Using the phone's embedded accelerometer and gyroscope,  data on 3-axial linear acceleration and 3-axial angular velocity at 
a constant rate of 50Hz were collected. The experiments were video-recorded for manual data labelling. The obtained dataset was 
randomly partitioned into two sets: 70% of the volunteers generated the training data and 30% generated the test data. 

#Procedure
A script entitled run_analysis.R was created in the parent folder of the dataset.  The script utilizes the data.table and reshape2 libraries.
The run_analysis.R script does the following:
* Merges the training and the test data to create one data set.
* Extracts the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates an independent tidy data set with the average of each variable for each activity and each subject.

#Citation
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones 
using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
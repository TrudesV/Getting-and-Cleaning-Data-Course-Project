## The following R script does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates an independent tidy data set with the average of each variable for each activity 
##and each subject.

library(data.table)
library(reshape2)

# Loading data column names
features <- read.table("./UCI HAR Dataset/features.txt", sep ="", header = FALSE)[ ,2]
featureS = gsub('-mean', 'Mean', features)
features = gsub('-std', 'Std', features)
features = gsub('[-()]', '', features)

# Loading activity labels
activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[ ,2]

# Extracting mean and standard deviation for each measurement.
extract.features <- grepl("mean|std", features)

# Loading and processing X_test & y_test data.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

names(X_test) = features

# Extracting mean and standard deviation for each measurement.
X_test = X_test[,extract.features]

# Loading activity labels
y_test[,2] = activity.labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

# Binding data
testdata <- cbind(as.data.table(subject_test), y_test, X_test)

# Loading and processing X_train & y_train data.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(X_train) = features

# Extracting mean and standard deviation for each measurement.
X_train = X_train[,extract.features]

# Loading activity data
y_train[ ,2] = activity.labels[y_train[ ,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

# Binding data
traindata <- cbind(as.data.table(subject_train), y_train, X_train)

# Merging test and train data
data = rbind(testdata, traindata)

idlabels   = c("subject", "Activity_ID", "Activity_Label")
datalabels = setdiff(colnames(data), idlabels)
meltdata      = melt(data, id = idlabels, measure.vars = datalabels)

# Applying mean function using dcast function
tidydata   = dcast(meltdata, subject + Activity_Label ~ variable, mean)

#Writing independent tidy data set
write.table(tidydata, file = "./UCI HAR Dataset/tidy_data.txt",row.names = FALSE )

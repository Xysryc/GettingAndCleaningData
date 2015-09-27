# Install "dplyr" package if not installed
if("dplyr" %in% rownames(installed.packages()) == FALSE)
{
  install.packages(dplyr)
}

# Load dplyr librry
library(dplyr)

# Define path to files
data_path <- file.path("./UCI HAR Dataset")

# Read subject data
dataSubjectTest <- read.table(file.path(data_path, "train","subject_train.txt"), header= FALSE)
dataSubjectTrain <- read.table(file.path(data_path, "test","subject_test.txt"), header= FALSE)

# Read labels/activity data
dataActivityTest <- read.table(file.path(data_path, "train","y_train.txt"), header= FALSE)
dataActivityTrain <- read.table(file.path(data_path, "test","y_test.txt"), header= FALSE)

# Read features data
dataFeaturesTest <- read.table(file.path(data_path, "train","x_train.txt"), header= FALSE)
dataFeaturesTrain <- read.table(file.path(data_path, "test","x_test.txt"), header= FALSE)

# Read feature names (=variable names)
featureNames <- read.table(file.path(data_path, "features.txt"), header= FALSE)
vectorOfFeatureNames <- as.character(featureNames[,2])

# Read activity names
activityLabels <- read.table(file.path(data_path, "activity_labels.txt"), header= FALSE)
vectorOfActivityLabels <- as.character(activityLabels[,2])

# Build single columns and give add column names
subject_list <- rbind(dataSubjectTest, dataSubjectTrain)
names(subject_list) <- "subject"
activity_list <- rbind(dataActivityTest, dataActivityTrain)
names(activity_list) <- "activity"
features_list <- rbind(dataFeaturesTest, dataFeaturesTrain)
names(features_list) <- vectorOfFeatureNames

# Filter mean and standard deviation columns from features_list
filtered_feature_names <- vectorOfFeatureNames[grep("mean\\(\\)|std\\(\\)", vectorOfFeatureNames)]
features_list_filtered <- subset(features_list,select=filtered_feature_names)

# Combine columns to data frame
complete_data <- cbind(subject_list,activity_list,features_list_filtered)

# Name the activities using descriptive activity names
complete_data$activity <- factor(complete_data$activity, levels=1:6, labels = vectorOfActivityLabels)

# Create descriptive variable names
names(complete_data) <- gsub("-std\\(\\)","StandardDeviation",names(complete_data))
names(complete_data) <- gsub("-mean\\(\\)","Mean",names(complete_data))
names(complete_data) <- gsub("-X","-X-Axis",names(complete_data))
names(complete_data) <- gsub("-Y","-Y-Axis",names(complete_data))
names(complete_data) <- gsub("-Z","-Z-Axis",names(complete_data))
names(complete_data) <- gsub("Gyro","Gyroscope",names(complete_data))
names(complete_data) <- gsub("Acc","Accelerometer",names(complete_data))
names(complete_data) <- gsub("Mag","Magnitude",names(complete_data))
names(complete_data) <- gsub("^t","time",names(complete_data))
names(complete_data) <- gsub("^f","frequency",names(complete_data))
names(complete_data) <- gsub("BodyBody","Body",names(complete_data))

# Create a grouped table
grouped_data <- group_by(complete_data, activity, subject)

# Create final data table with mean for each activity and each subject
final_data <- summarise_each(grouped_data,funs(mean))

# Write data to file
write.table(final_data, file="tidy_data.txt", row.name = FALSE)
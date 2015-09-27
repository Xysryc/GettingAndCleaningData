# GettingAndCleaningData

The script „run_analysis.R“ must be run in the same directory as the extracted „UCI HAR Dataset“, which can be downloaded here:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

For more information about the „UCI HAR Dataset“, please see here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script „run_analysis.R“ performs the following analysis on the data in the directory „UCI HAR Dataset“:

1. It first reads the data on participants, activities observed and various measurements from the files in the test and train directories into separate variables.
2. It then reads the different descriptive names for the activities in the activity variable from the file ‚activity_labels.txt’ as well as the variable names for the different measurements from the file ‚features.txt‘. It labels the different measurements with the names from ‚features.txt‘.
3. After that, it extracts only the measurements on the mean and standard deviation for each measurement. It then combines the subject and the activity variables with these extracted variables into a single data frame, containing the test as well as the trainin data. 
5. It then replaces the number coding of the activity variable with the descriptive values from ‚activity_labels.txt‘ and also labels the different measurements with more descriptive variable names.
5. Finally, it creates an independent tidy data set with the average of each variable for each activity and each subject.
6. It then writes this data set to a file called „tidy_data.txt“ in the same directory as „run_analysis.R“.
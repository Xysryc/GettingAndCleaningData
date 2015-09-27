
Title: „Getting and Cleaning Data - Human Activity Recognition Using Smartphones Dataset - Averages of Means and Standard Deviations“
Author: „Tom Anyone“
Date: „2015-09-27


## Project Description
The current project calculates the the averages of the measurements on the mean and standard deviation for each measurement in the „Human Activity Recognition Using Smartphones Data Set“. 

##Study design and data processing
###Collection of the raw data
The raw data forming the basis of this analysis was downloaded from the following address: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 

**Human Activity Recognition Using Smartphones Dataset
Version 1.0**
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

For more information please consult:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Creating the tidy datafile

###Guide to create the tidy data file
1. Download the R script „run_analysis.R“ as well as the directory „UCI HAR Dataset“. The script as well as the directory need to be stored in the same directory.
2. Run the R script.
3. The script will create a file called „tidy_data.txt“ in the same directory.

###Cleaning of the data
The tidy data set re-combines the test and training data sets from the original data set in the „UCI HAR Dataset“ directory. It only includes measurements on the standard deviation and the mean of the different measurements. More specifically, it provides the average of each mean and standard deviation variable for each activity measured and for each subject observed.
For a more detailed description of how the cleaning script works, please consult the README.

##Description of the variables in the resulting tidy_data.txt file
 - The clean dataset consist of 68 columns and 180 rows (including the header row).
 - The variable ‚activity‘ contains one of the following activities observed: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
 - The variable ‚subject’ contains an ID between 1 to 30, indicating the experiment participant.
 - The remaining variables contain the averages of all the measurements on the standard deviation and the mean of the different measurements for each activity and subject observed. For more information on the single measurements, please see ‚features_info.txt‘ in the original data. 

### Variable names
 [1] "activity"                                                
 [2] "subject"                                                 
 [3] "timeBodyAccelerometerMean-X-Axis"                        
 [4] "timeBodyAccelerometerMean-Y-Axis"                        
 [5] "timeBodyAccelerometerMean-Z-Axis"                        
 [6] "timeBodyAccelerometerStandardDeviation-X-Axis"           
 [7] "timeBodyAccelerometerStandardDeviation-Y-Axis"           
 [8] "timeBodyAccelerometerStandardDeviation-Z-Axis"           
 [9] "timeGravityAccelerometerMean-X-Axis"                     
[10] "timeGravityAccelerometerMean-Y-Axis"                     
[11] "timeGravityAccelerometerMean-Z-Axis"                     
[12] "timeGravityAccelerometerStandardDeviation-X-Axis"        
[13] "timeGravityAccelerometerStandardDeviation-Y-Axis"        
[14] "timeGravityAccelerometerStandardDeviation-Z-Axis"        
[15] "timeBodyAccelerometerJerkMean-X-Axis"                    
[16] "timeBodyAccelerometerJerkMean-Y-Axis"                    
[17] "timeBodyAccelerometerJerkMean-Z-Axis"                    
[18] "timeBodyAccelerometerJerkStandardDeviation-X-Axis"       
[19] "timeBodyAccelerometerJerkStandardDeviation-Y-Axis"       
[20] "timeBodyAccelerometerJerkStandardDeviation-Z-Axis"       
[21] "timeBodyGyroscopeMean-X-Axis"                            
[22] "timeBodyGyroscopeMean-Y-Axis"                            
[23] "timeBodyGyroscopeMean-Z-Axis"                            
[24] "timeBodyGyroscopeStandardDeviation-X-Axis"               
[25] "timeBodyGyroscopeStandardDeviation-Y-Axis"               
[26] "timeBodyGyroscopeStandardDeviation-Z-Axis"               
[27] "timeBodyGyroscopeJerkMean-X-Axis"                        
[28] "timeBodyGyroscopeJerkMean-Y-Axis"                        
[29] "timeBodyGyroscopeJerkMean-Z-Axis"                        
[30] "timeBodyGyroscopeJerkStandardDeviation-X-Axis"           
[31] "timeBodyGyroscopeJerkStandardDeviation-Y-Axis"           
[32] "timeBodyGyroscopeJerkStandardDeviation-Z-Axis"           
[33] "timeBodyAccelerometerMagnitudeMean"                      
[34] "timeBodyAccelerometerMagnitudeStandardDeviation"         
[35] "timeGravityAccelerometerMagnitudeMean"                   
[36] "timeGravityAccelerometerMagnitudeStandardDeviation"      
[37] "timeBodyAccelerometerJerkMagnitudeMean"                  
[38] "timeBodyAccelerometerJerkMagnitudeStandardDeviation"     
[39] "timeBodyGyroscopeMagnitudeMean"                          
[40] "timeBodyGyroscopeMagnitudeStandardDeviation"             
[41] "timeBodyGyroscopeJerkMagnitudeMean"                      
[42] "timeBodyGyroscopeJerkMagnitudeStandardDeviation"         
[43] "frequencyBodyAccelerometerMean-X-Axis"                   
[44] "frequencyBodyAccelerometerMean-Y-Axis"                   
[45] "frequencyBodyAccelerometerMean-Z-Axis"                   
[46] "frequencyBodyAccelerometerStandardDeviation-X-Axis"      
[47] "frequencyBodyAccelerometerStandardDeviation-Y-Axis"      
[48] "frequencyBodyAccelerometerStandardDeviation-Z-Axis"      
[49] "frequencyBodyAccelerometerJerkMean-X-Axis"               
[50] "frequencyBodyAccelerometerJerkMean-Y-Axis"               
[51] "frequencyBodyAccelerometerJerkMean-Z-Axis"               
[52] "frequencyBodyAccelerometerJerkStandardDeviation-X-Axis"  
[53] "frequencyBodyAccelerometerJerkStandardDeviation-Y-Axis"  
[54] "frequencyBodyAccelerometerJerkStandardDeviation-Z-Axis"  
[55] "frequencyBodyGyroscopeMean-X-Axis"                       
[56] "frequencyBodyGyroscopeMean-Y-Axis"                       
[57] "frequencyBodyGyroscopeMean-Z-Axis"                       
[58] "frequencyBodyGyroscopeStandardDeviation-X-Axis"          
[59] "frequencyBodyGyroscopeStandardDeviation-Y-Axis"          
[60] "frequencyBodyGyroscopeStandardDeviation-Z-Axis"          
[61] "frequencyBodyAccelerometerMagnitudeMean"                 
[62] "frequencyBodyAccelerometerMagnitudeStandardDeviation"    
[63] "frequencyBodyAccelerometerJerkMagnitudeMean"             
[64] "frequencyBodyAccelerometerJerkMagnitudeStandardDeviation"
[65] "frequencyBodyGyroscopeMagnitudeMean"                     
[66] "frequencyBodyGyroscopeMagnitudeStandardDeviation"        
[67] "frequencyBodyGyroscopeJerkMagnitudeMean"                 
[68] "frequencyBodyGyroscopeJerkMagnitudeStandardDeviation"                                               
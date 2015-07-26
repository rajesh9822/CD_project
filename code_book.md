#Getting and Cleaning Data Course Project

#####The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data from accelerometers of Samsung Galaxy S smartphone that can be used for later analysis. 

##Study design and data processing

###Collection of the raw data

#####The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.  

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#####A full description is available at the site where the original data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Creating the tidy datafile

###Guide to create the tidy data file

#####1. run the run_analysis.R the script itself downloads the data into CD_project folder in your current directory.
#####2. the script creates the tidy data file output.txt in the CD_project folder

###Cleaning of the data

#####The run_analysis script downloads the data , combines the test and training data from accelerometer and gyroscope and summurizes on the diffrent activities of the subject. The details explanation of is given in Readme.md file

##Description of the variables in the output.txt file

#####General description of the file:

* Dimensions of the dataset 180 X 68
* data summurizes the subjects activity like WALKING etc and displays the average of mean and sd of accelerometer and gyroscope.

##Variables present in the dataset
 
###Variable "subject"

####This identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

#####Some information on the variable:

* Class integer
* range 1 to 30
* No Unit of measurement

###Variable "activity"

####This identifies the activity performed by the subject. 

* Class char
* the different activities are WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
* No Unit of measurement
* In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels).

###Feature Variables

####These are set of variables representing the time and frequency based signals from accelerometer and gyroscope

* Class numeric
* Unit of measurement Hz
* The data represents mean of the features decribed below summurized on subject and activity
The features selected for this file come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
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
* fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

The complete list of variables is as below.

"tBodyAcc-mean()-X"          
"tBodyAcc-mean()-Y"           
"tBodyAcc-mean()-Z"           
"tGravityAcc-mean()-X"       
"tGravityAcc-mean()-Y"        
"tGravityAcc-mean()-Z"        
"tBodyAccJerk-mean()-X"      
"tBodyAccJerk-mean()-Y"       
"tBodyAccJerk-mean()-Z"       
"tBodyGyro-mean()-X"         
"tBodyGyro-mean()-Y"          
"tBodyGyro-mean()-Z"          
"tBodyGyroJerk-mean()-X"     
"tBodyGyroJerk-mean()-Y"      
"tBodyGyroJerk-mean()-Z"      
"tBodyAccMag-mean()"         
"tGravityAccMag-mean()"       
"tBodyAccJerkMag-mean()"      
"tBodyGyroMag-mean()"        
"tBodyGyroJerkMag-mean()"     
"fBodyAcc-mean()-X"           
"fBodyAcc-mean()-Y"          
"fBodyAcc-mean()-Z"           
"fBodyAccJerk-mean()-X"       
"fBodyAccJerk-mean()-Y"      
"fBodyAccJerk-mean()-Z"       
"fBodyGyro-mean()-X"          
"fBodyGyro-mean()-Y"         
"fBodyGyro-mean()-Z"          
"fBodyAccMag-mean()"          
"fBodyBodyAccJerkMag-mean()"      
"fBodyBodyGyroMag-mean()"                   
"fBodyBodyGyroJerkMag-mean()"      
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            
"tBodyAcc-std()-Z"            
"tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"         
"tGravityAcc-std()-Z"         
"tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"        
"tBodyAccJerk-std()-Z"        
"tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"           
"tBodyGyro-std()-Z"           
"tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       
"tBodyGyroJerk-std()-Z"       
"tBodyAccMag-std()"          
"tGravityAccMag-std()"        
"tBodyAccJerkMag-std()"       
"tBodyGyroMag-std()"         
"tBodyGyroJerkMag-std()"      
"fBodyAcc-std()-X"            
"fBodyAcc-std()-Y"           
"fBodyAcc-std()-Z"            
"fBodyAccJerk-std()-X"        
"fBodyAccJerk-std()-Y"       
"fBodyAccJerk-std()-Z"        
"fBodyGyro-std()-X"           
"fBodyGyro-std()-Y"          
"fBodyGyro-std()-Z"           
"fBodyAccMag-std()"           
"fBodyBodyAccJerkMag-std()"  
"fBodyBodyGyroMag-std()"      
"fBodyBodyGyroJerkMag-std()" 


##Annex

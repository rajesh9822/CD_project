#Getting and Cleaning Data Course Project 
##This documemnts explains about the script run_analysis.R
###Asumptions
*The samsung data if not present in the ./CD_project directory will be downloaded
*If data would be stored in ./CD_project 
*run_analysis has been tested on 64bit Linux OS ubuntu 14.04, with R 3.2.1.
*dplyr package should be installed.

####If file data.zip file is not present in CD_project the script creates the
####directory CD_project and downloads the file into data.zip from url below
####https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset ####.zip

####The test dataset, test subject and test activity are loaded into R
####Similiarly the training dataset, training subjects and training activity are loaded ####in R

####This data set is combined into one single data frame called data
####The colomn name headers are added to the data from features.txt
####It then extracts the sd and mean variables of accelerometer and gyroscope 
####The details of the colomns variable is present in the data_dictionary.doc file
####Descriptive activity names are then added to coulmn activity

#### Tidy data is then extracted by summursising the on subject and activity
#### mean is taken for other variables.
#### output is writen in output.txt file
#R script called run_analysis.R does the following. 
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with
#the average of each variable for each activity and each subject.
library(dplyr)

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
input <- "./CD_project/data.zip"
output <- "./CD_project/output.txt"
if(!file.exists(input)){     
        dir.create("CD_project")
        download.file(fileurl, destfile=input,method="wget")
}
#Unzip the files
unzip(input,exdir = "./CD_project")
#set the path of files to Load data
fpath_test <- ("./CD_project/UCI\ HAR\ Dataset/test/X_test.txt")
fpath_subject_test <- ("./CD_project/UCI\ HAR\ Dataset/test/subject_test.txt")
fpath_train <- ("./CD_project/UCI\ HAR\ Dataset/train/X_train.txt")
fpath_subject_train <- ("./CD_project/UCI\ HAR\ Dataset/train/subject_train.txt")
fpath_activity_test <- ("./CD_project/UCI\ HAR\ Dataset/test/y_test.txt")
fpath_activity_train <- ("./CD_project/UCI\ HAR\ Dataset/train/y_train.txt")
fpath_features <- ("./CD_project/UCI\ HAR\ Dataset/features.txt")

#Read all the Test , Train activity and subject data 
test <- read.table(fpath_test)
subject_test <- read.table(fpath_subject_test)
train <- read.table(fpath_train)
subject_train <- read.table(fpath_subject_train)
test_activity <- read.table(fpath_activity_test,colClasses="character",stringsAsFactors =FALSE)
train_activity <- read.table(fpath_activity_train,colClasses="character",stringsAsFactors=FALSE)
features <- read.table(fpath_features)

#combine the subject,activity data with test and train data
test_all  <- data.frame(test_subject,test_activity,test)
train_all <- data.frame(train_subject,train_activity,train)

#1.Merges the training and the test sets to create one data set
data <- rbind(test_all,train_all)

#4.Appropriately labels the data set with descriptive variable names
t_features <- t(features)
features_col <- as.character(t_features[2,])
colnames <- c("subject","activity",features_col)
names(data) <- colnames

##remove duplicate columns
data <- data[ !duplicated(names(data))]

#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
data_sd_mean <- select(.data = X,subject,activity,contains("mean()"),contains("std()"))

#3. Uses descriptive activity names to name the activities in the data set
for (i in 1:nrow(data_sd_mean)) {
          if (data_sd_mean[[i,"activity"]] == "1") { data_sd_mean[[i,"activity"]] <- "WALKING"}
          else if (data_sd_mean[[i,"activity"]] == "2") { data_sd_mean[[i,"activity"]] <- "WALKING_UPSTAIRS"}
          else if (data_sd_mean[[i,"activity"]] == "3") { data_sd_mean[[i,"activity"]] <- "WALKING_DOWNSTAIRS"}
          else if (data_sd_mean[[i,"activity"]] == "4") { data_sd_mean[[i,"activity"]] <- "SITTING"}
          else if (data_sd_mean[[i,"activity"]] == "5") { data_sd_mean[[i,"activity"]] <- "STANDING"}
          else if (data_sd_mean[[i,"activity"]] == "6") { data_sd_mean[[i,"activity"]] <- "LAYING"}
}
#5.creates a second, independent tidy data set with the 
##average of each variable for each activity and each subject
tidy_data <- data_sd_mean %>% group_by(subject,activity) %>% summarise_each(funs(mean))

#write the tidy data in the output.txt file
write.table(tidy_data,file=output,row.names=FALSE)

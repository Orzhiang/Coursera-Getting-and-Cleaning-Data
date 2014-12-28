Coursera-Getting-and-Cleaning-Data
==================================

The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in the working directory.

Before running the R script, please replace the directory in setwd to the working directory.

The scripts

A - CALL LIBRARY
1) Call library dplypr.

B - READ DATA
1) Read list of all features from "UCI HAR Dataset/features.txt" into Features using function read.table with header = F.

2) Read the table that links the class labels with their activity name from "UCI HAR Dataset/activity_labels.txt" into Act_labs using function read.table with header = F.

3) Read subjects from test set from "UCI HAR Dataset/test/subject_test.txt" into Sub_Test using function read.table with header = F.

4) Read subjects from training set "UCI HAR Dataset/train/subject_train.txt" into Sub_Train using function read.table with header = F.

5) Read test set "UCI HAR Dataset/test/X_test.txt" into XTest_Data using function read.table with header = F.

6) Read test labels "UCI HAR Dataset/test/y_test.txt" into YTest_Data using function read.table with header = F.

7) Read training set "UCI HAR Dataset/train/X_train.txt" into XTrain_Data using function read.table with header = F.

8) Read training labels "UCI HAR Dataset/train/y_train.txt" into YTrain_Data using function read.table with header = F.

C - COMBINE DATA
1) Combine test set and training set using function rbind on XTrain_Data and XTest_Data.

2) Combine test labels and training labels using function rbind on YTrain_Data and YTest_Data.

3) Combine subjects from training set and test set using function rbind on Sub_Train and Sub_Test.

13)

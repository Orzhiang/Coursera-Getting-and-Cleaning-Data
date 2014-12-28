Coursera-Getting-and-Cleaning-Data
==================================

The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in the working directory.

Before running the R script, please replace the directory in function **setwd** to the working directory.

The scripts perform the following steps:-

####A - CALL LIBRARY
1) Call library dplypr.

####B - READ DATA
1) Read list of all features from "UCI HAR Dataset/features.txt" into **Features** using function *read.table* with *header = F*.

2) Read the table that links the class labels with their activity name from "UCI HAR Dataset/activity_labels.txt" into **Act_labs** using function *read.table* with *header = F*.

3) Read subjects from test set from "UCI HAR Dataset/test/subject_test.txt" into **Sub_Test** using function *read.table* with *header = F*.

4) Read subjects from training set "UCI HAR Dataset/train/subject_train.txt" into **Sub_Train** using function *read.table* with *header = F*.

5) Read test set "UCI HAR Dataset/test/X_test.txt" into **XTest_Data** using function *read.table* with *header = F*.

6) Read test labels "UCI HAR Dataset/test/y_test.txt" into **YTest_Data** using function *read.table* with *header = F*.

7) Read training set "UCI HAR Dataset/train/X_train.txt" into **XTrain_Data** using function *read.table* with *header = F*.

8) Read training labels "UCI HAR Dataset/train/y_train.txt" into **YTrain_Data** using function *read.table* with *header = F*.

####C - COMBINE DATA
1) Combine test set and training set using function *rbind* on **XTrain_Data** and **XTest_Data**. Assign the combination to a new data frame **X_Data**.

2) Combine test labels and training labels using function *rbind* on **YTrain_Data** and **YTest_Data**. Assign the combination to a new data frame **Y_Data**.

3) Combine subjects from training set and test set using function *rbind* on **Sub_Train** and **Sub_Test**. Assign the combination to a new data frame **Sub_Data**.

4) Rename column names of **X_Data** as the value of the second dimension of **Features**.

5) Rename column name of **Y_Data** as "Labels".

6) Rename column name of **Sub_Data** as "Subjects".

7) Combine **Sub_Data**,**Y_Data** and **X_Data** in a new data frame **Complete_Data** by using function *cbind*。

8) Replace the class labels in the second column of **Complete_Data** with respective Activity Labels as per the table illustrated in data frame **Act_labs**.

####D - EXTRACT AND CLEAN DATA

1) Obtain column index from all **Complete_Data** column names with "mean()" and "std()" using function *grep*. Select the columns based on the index obtained by function *grep*. Create a new data frame tbl item **Data_tbl** from the selected columns using function *tbl_df* from library *dplyr*.

2) Replace "-" with "_" in the column names of **Data_tbl** using function *gsub*.

3) Replace "()" with "_" in the column names of **Data_tbl** using function *gsub*.

4) Group **Data_tbl** by Subjects and Labels using function *group_by*. Summarize the grouped data by mean from column index 3 to 68 of **Data_tbl** using function *summarise_each_* from library *dplyr*. The summary table is assigned to new data frame **Data_New_tbl**.

####E - EXPORT DATA
1) Export **Data_New_tbl** in txt format to the working directory with the name of "Tidy Data Set" following with System Date and System Time using function *write.table* with *row.name=F*

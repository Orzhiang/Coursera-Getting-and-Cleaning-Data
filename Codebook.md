For meaning of each variable in the data set, please refer to "UCI HAR Dataset/features_info.txt".  
For data contained in each txt file, please refer to "UCI HAR Dataset/features_info.txt".

Attached the data frame created while running the scripts:-

-**Act_Labs** (Source : UCI HAR Dataset/activity_labels.txt), direct extraction from source.
-**Features** (Source : UCI HAR Dataset/features.txt), direct extraction from source.
-**Sub_Test** (Source : UCI HAR Dataset/test/subject_test.txt), direct extraction from source.
-**Sub_Train** (Source : UCI HAR Dataset/train/subject_train.txt), direct extraction from source.
-**XTest_Data** (Source : UCI HAR Dataset/test/X_test.txt"), direct extraction from source.
-**YTest_Data** (Source : UCI HAR Dataset/test/y_test.txt"), direct extraction from source.
-**XTrain_Data** (Source : UCI HAR Dataset/test/X_train.txt"), direct extraction from source.
-**YTrain_Data** (Source : UCI HAR Dataset/test/y_train.txt"), direct extraction from source.
-**X_Data**, combination of **XTest_Data** and **XTrain_Data**, column names renamed as per second dimension of **Features**.
-**Y_Data**, combination of **YTest_Data** and **YTrain_Data**, column name renamed to "Labels".
-**Sub_Data**, combination of **Sub_Test** and **Sub_Train**, column name renamed to "Subjects".
-**Complete_Data**, combination of **X_Data**,**Y_Data** and **Sub_Data**, class labels in the second column were replaced with respective Activity Labels as per the table illustrated in data frame Act_labs
-**Data_tbl**, a data frame tbl form of **Complete_Data**, "-" was replaced by "-" and "()" was removed from columns name.
-**Data_New_tbl**, a data frame which recorded the summary of **Data_tbl** by subjects and labels.

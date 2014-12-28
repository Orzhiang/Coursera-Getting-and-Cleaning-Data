#Course Project
#setwd("D:/Coursera/DS3 - Getting and Cleaning Data/DS3 - Asssignment/")
library(dplyr)

Features<-read.table("UCI HAR Dataset/features.txt",header=F)
Act_labs<-read.table("UCI HAR Dataset/activity_labels.txt",header=F)

Sub_Test<-read.table("UCI HAR Dataset/test/subject_test.txt",header=F)
Sub_Train<-read.table("UCI HAR Dataset/train/subject_train.txt",header=F)
XTest_Data<-read.table("UCI HAR Dataset/test/X_test.txt",header=F)
YTest_Data<-read.table("UCI HAR Dataset/test/y_test.txt",header=F)
XTrain_Data<-read.table("UCI HAR Dataset/train/X_train.txt",header=F)
YTrain_Data<-read.table("UCI HAR Dataset/train/y_train.txt",header=F)

X_Data<-rbind(XTrain_Data,XTest_Data)
Y_Data<-rbind(YTrain_Data,YTest_Data)
Sub_Data<-rbind(Sub_Train,Sub_Test)

names(X_Data)<-Features[,2]
names(Y_Data)<-"Labels"
names(Sub_Data)<-"Subjects"
Complete_Data<-cbind(Sub_Data,Y_Data,X_Data)

Complete_Data[,2]<-Act_labs[Complete_Data$Labels,2]

Data_tbl<-tbl_df(Complete_Data[,c(1,2,
                                  grep("*mean[^Freq]()*|*std()*",names(Complete_Data)))])

names(Data_tbl)<-gsub("-","_",names(Data_tbl))
names(Data_tbl)<-gsub("\\()","",names(Data_tbl))
Data_New_tbl<-summarise_each_(group_by(Data_tbl,Subjects,Labels),funs(mean),names(Data_tbl)[3:68])
write.table(Data_New_tbl,paste("Tidy Data Set",
                         format(Sys.time(), "%H_%M_%S %d_%b_%Y"),".txt"),
          row.name=F)

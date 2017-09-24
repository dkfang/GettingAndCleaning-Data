# Getting and Cleaning Data Course Project

# Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to create a tidy data set that can be used for later analysis.

1) a tidy data set as described below
2) a link to a Github repository with your script for performing the analysis
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

# Objectives
run_analysis.R performs the following
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each           measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the    average of each variable for each activity and each subject.

# In run_analysis.R
1. Please download UCI HAR Dataset or zip file from this repo in your working           directory.
2. It loads in train and test data from "UCI HAR Dataset" folder and merges two data    sets into one. rbind function is used to perform this process
3. It extracts mean and standard deviation from the features data set. it uses grep     function to extract these values. After extracting these values, it convertes        elements in second column to lower case using tolower and removes "()" using gsub
4. Activities data set is also loaded, it converts it to lower case using tolower       and removes "_" using gsub. It also specifies column names to "activity" and         "subject" for "y" and "subj" data sets.
5. Finaly, three data set, "x", "y", and "subj" are merged. Then, this data table is    exported into the tidyData folder in your current directory, name "tidyData.txt".
6. From the data set in previous step, creates a second, independent tidy data set      with the average of each variable for each activity and each subject. name           "avgData.txt"



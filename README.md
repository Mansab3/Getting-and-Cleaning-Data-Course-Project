Getting and Cleaning Data Course Project
Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:
	1.	a tidy data set as described below;
	2.	a link to a Github repository with your script for performing the analysis; and
	3.	a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
Data for the project 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Objectives
run_analysis.R performs the following:
	1.	Merges the training and the test sets to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement.
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive activity names.
	5.	Creates a second, independent tidy data set with the average and standard deviation  of each variable for each SubjectID and Activity.
run_analysis.R
	1.	Download the UCI HAR Dataset data set into the UCI HAR Dataset folder.
	2.	Read test, train , features and activity files through read.table().
	3.	Merge test and train activity data using rbind()
	4.	Merge test and train feature data using rbind()
	5.	Find indices for features that has mean() or standard deviation as columns name.
	6.	Filter only features that has mean() or standard deviation column
	7.	Replace activity numbers with activity name
	8.	Create factor for feature name
	9.	Update column name with feature names using factor indices
	10.	Name columns as subject and activity
	11.	Create new dataset by merging subject, activity and features using bin.
	12.	Load merged dataset into CleanData as data.table
	13.	Average mean and standard deviation for each variable of subject and activity into data frame tidydataF
	14.	Write data frame tidydataF into TidyData.txt file.
	15.	Display tidydataF three columns to check results.

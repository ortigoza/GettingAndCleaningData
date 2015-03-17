# Getting And Cleaning Data Course Project

### I. Description

Hi, welcome to my README.md file, here I'll explain you a little more about the getting and cleaning data course project.

In this repository, you can see:

1. README.md - You're here 
2. CODEBOOK.md - The codebooks with the data to indicate all the variables.
3. run_analysis.R - R script to perform the task required by the project description, the script has several comments to understand how each goal is achieved; please see comments first.

The project description's is:

>The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

>One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

>Here are the data for the project: 

>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

>You should create one R script called run_analysis.R that does the following. 

>1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### II. Requirements and dependencies 

0. You need to download and unzip file manually. The run_analysis.R does NOT this tasks.
1. Please make sure you have the following libraries: "data.table" and "dplyr".
(optional) If you don't have installed, please type install.packages("data.table","dplyr") in order to get them.

Thank's


## Getting & Cleaning Data - Project Assignment

This project assignment was completed as an assessment element on the Coursera 'Getting and Cleaning Data' module. This is one module of a 9 part Data Science Specialization. For more information on this module and the others offered in this specialisation please see [here](https://www.coursera.org/specialization/jhudatascience/1/courses).

==================================================================

### Original Data Source Project Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Further details can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data set was collected in relation to the following project and publication:

Human Activity Recognition Using Smartphones Dataset Version 1.0
David Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on 
Smartphones usin a Multiclass Hardware-Friendly Support Vectgor Maching. International Workshop of Ambient Assisted 
Living (IAWAAL, 2012). Vitoria-Gasteiz, Spain. Dec 2012. 

==================================================================

### Required tasks
The Getting & Cleaning Data Project required the following set of tasks to be performed on the original data files:


    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject". 

==================================================================

### R Script & Data Files Needed 
The run_analysis.R script (available in this folder) has been created to complete the 'Required tasks'. Before you can run this script you need to completed the following steps:

1. Download the data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

2. Unziping the file will created a 'UCI HAR Dataset' folder containing files and sub-folders

3. You need to ensure that the files listed below are **ALL IN THE SAME FOLDER** as the 'run_analysis.R' script:
    * 'subject_train.txt' file
    * 'X_train.txt' file
    * 'features.txt' file
    * 'y_train.txt' file
    * 'subject_test.txt' file
    * 'X_test.txt' file
    * 'y_test.txt' file

    *Note*: there are a number of other files in this folder but are not required in the analysis completed here

4. Running the 'run_analysis.R' script will output a 'tidyData.csv' file. Please see the CodeBook.md file in this folder for a more detailed description of the data and the steps takes to transform the data

*Note:* you will also need to install the 'reshape2' R package. 

==================================================================

### R Version and Date

Date submitted: 19th June 2014

R Studio Version: R version 3.0.2 (2013-09-25)

==================================================================




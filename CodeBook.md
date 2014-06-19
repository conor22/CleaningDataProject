## CodeBook for Getting & Cleaning Data - Project Assignment

This CodeBook provides and overview of the data files and variable types used in this project. It also includes details of the steps followed to create the 'tidyData.csv' file from the original data set provided.


==================================================================
### Original Data Source
All of the original data for this project was gathered as part of a *Human Activity Recognition Using Smartphones Dataset*, and the original data can be found in a .zip file located [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Further details on how how the data was gathered and the project in general is available [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


==================================================================
### Data files used and descriptions
The original data set contains files that were not used in the output of this project. A number of files from the original data set were used and they are as follows:

- 'subject_train.txt': Contains 7353 rows and 1 col. Each row contains an integer that identifies the subject_ID who performed the activity. Its range is from 1-30.

- 'X_train.txt': Contains 7352 rows and 561 cols of measurements for the training experiments. 

- 'features.txt': Contains 561 rows and 1 col. Lists all of the features for the train and test experiments. 

- 'y_train.txt': Contains 7352 rows and 1 col. A factor list with range 1-6 for each of the training activities as listed in 'activity_labels.txt' file. These include walking, sitting, standing etc

- 'subject_test.txt': Contains 2947 rows and 1 col. Each row contains an integer that identifies the subject_ID who performed the activity. Range is from 2-24. 

- 'X_test.txt': Contains 2947 rows and 561 cols of measurements for the test experiments.

- 'y_test.txt': Contains 2947 rows and 1 col. A factor list with range 1-6 for each of the test activities as listed in 'activity_labels.txt' file. These include walking, sitting, standing etc

- 'features_info.txt': Details the naming convention used in all of the variables in the data set.

- 'activity_labels.txt': Details the 6 x activities each participant was measured for. 


==================================================================
### Variables in the tidyData.csv output
The tidyData.csv file output from the run_analysis.R script is as follows:

'data.frame':	180 obs. of  68 variables:
 1. $ subjectid: int  range 1-30
 2. $ activity: Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..:
 3. $ timebodyaccmeanx: num,  range -1.0 -> +1.0
 4. $ timebodyaccmeany: num,  range -1.0 -> +1.0
 5. $ timebodyaccmeanz: num,  range -1.0 -> +1.0
 6. $ timebodyaccstandarddeviationx: num,  range -1.0 -> +1.0
 7. $ timebodyaccstandarddeviationy: num,  range -1.0 -> +1.0
 8. $ timebodyaccstandarddeviationz: num,  range -1.0 -> +1.0
 9. $ timegravityaccmeanx: num,  range -1.0 -> +1.0
 10. $ timegravityaccmeany: num,  range -1.0 -> +1.0
 11. $ timegravityaccmeanz: num,  range -1.0 -> +1.0
 12. $ timegravityaccstandarddeviationx: num,  range -1.0 -> +1.0
 13. $ timegravityaccstandarddeviationy: num,  range -1.0 -> +1.0
 14. $ timegravityaccstandarddeviationz: num,  range -1.0 -> +1.0
 15. $ timebodyaccjerkmeanx: num,  range -1.0 -> +1.0
 16. $ timebodyaccjerkmeany: num, range -1.0 -> +1.0
 17. $ timebodyaccjerkmeanz: num,  range -1.0 -> +1.0
 18. $ timebodyaccjerkstandarddeviationx: num,  range -1.0 -> +1.0
 19. $ timebodyaccjerkstandarddeviationy: num,  range -1.0 -> +1.0
 20. $ timebodyaccjerkstandarddeviationz: num,  range -1.0 -> +1.0
 21. $ timebodygyroscopemeanx: num,  range -1.0 -> +1.0
 22. $ timebodygyroscopemeany: num,  range -1.0 -> +1.0
 23. $ timebodygyroscopemeanz: num,  range -1.0 -> +1.0
 24. $ timebodygyroscopestandarddeviationx: num,  range -1.0 -> +1.0
 25. $ timebodygyroscopestandarddeviationy: num,  range -1.0 -> +1.0
 26. $ timebodygyroscopestandarddeviationz: num,  range -1.0 -> +1.0
 27. $ timebodygyroscopejerkmeanx: num,  range -1.0 -> +1.0
 28. $ timebodygyroscopejerkmeany: num,  range -1.0 -> +1.0
 29. $ timebodygyroscopejerkmeanz: num,  range -1.0 -> +1.0
 30. $ timebodygyroscopejerkstandarddeviationx: num,  range -1.0 -> +1.0
 31. $ timebodygyroscopejerkstandarddeviationy: num,  range -1.0 -> +1.0
 32. $ timebodygyroscopejerkstandarddeviationz: num,  range -1.0 -> +1.0
 33. $ timebodyaccmagmean: num,  range -1.0 -> +1.0
 34. $ timebodyaccmagstandarddeviation: num,  range -1.0 -> +1.0
 35. $ timegravityaccmagmean: num,  range -1.0 -> +1.0
 36. $ timegravityaccmagstandarddeviation: num,  range -1.0 -> +1.0
 37. $ timebodyaccjerkmagmean : num,  range -1.0 -> +1.0
 38. $ timebodyaccjerkmagstandarddeviation: num,  range -1.0 -> +1.0
 39. $ timebodygyroscopemagmean: num,  range -1.0 -> +1.0
 40. $ timebodygyroscopemagstandarddeviation: num,  range -1.0 -> +1.0
 41. $ timebodygyroscopejerkmagmean: num,  range -1.0 -> +1.0
 42. $ timebodygyroscopejerkmagstandarddeviation: num  range -1.0 -> +1.0
 43. $ frequencybodyaccmeanx: num,  range -1.0 -> +1.0
 44. $ frequencybodyaccmeany: num,  range -1.0 -> +1.0
 45. $ frequencybodyaccmeanz: num,  range -1.0 -> +1.0
 46. $ frequencybodyaccstandarddeviationx: num,  range -1.0 -> +1.0
 47. $ frequencybodyaccstandarddeviationy: num,  range -1.0 -> +1.0
 48. $ frequencybodyaccstandarddeviationz: num,  range -1.0 -> +1.0
 49. $ frequencybodyaccjerkmeanx: num,  range -1.0 -> +1.0
 50. $ frequencybodyaccjerkmeany: num, range -1.0 -> +1.0
 51. $ frequencybodyaccjerkmeanz: num,  range -1.0 -> +1.0
 52. $ frequencybodyaccjerkstandarddeviationx: num,,  range -1.0 -> +1.0
 53. $ frequencybodyaccjerkstandarddeviationy: num,  range -1.0 -> +1.0
 54. $ frequencybodyaccjerkstandarddeviationz: num,  range -1.0 -> +1.0
 55. $ frequencybodygyroscopemeanx: num,  range -1.0 -> +1.0
 56. $ frequencybodygyroscopemeany: num,  range -1.0 -> +1.0
 57. $ frequencybodygyroscopemeanz: num,  range -1.0 -> +1.0
 58. $ frequencybodygyroscopestandarddeviationx: num,  range -1.0 -> +1.0
 59. $ frequencybodygyroscopestandarddeviationy: num,  range -1.0 -> +1.0
 60. $ frequencybodygyroscopestandarddeviationz: num,  range -1.0 -> +1.0
 61. $ frequencybodyaccmagmean: num,  range -1.0 -> +1.0
 62. $ frequencybodyaccmagstandarddeviation: num,  range -1.0 -> +1.0
 63. $ frequencybodybodyaccjerkmagmean: num,  range -1.0 -> +1.0
 64. $ frequencybodybodyaccjerkmagstandarddeviation: num,  range -1.0 -> +1.0
 65. $ frequencybodybodygyroscopemagmean: num,  range -1.0 -> +1.0
 66. $ frequencybodybodygyroscopemagstandarddeviation: num,  range -1.0 -> +1.0
 67. $ frequencybodybodygyroscopejerkmagmean: num,  range -1.0 -> +1.0
 68. $ frequencybodybodygyroscopejerkmagstandarddeviation: num,  range -1.0 -> +1.0
 
 
Original column names we altered to conform with best practice variable naming conventions. All names were converted to lower case and all special characters were removed. Names were also altered to make more sense i.e. variables that started with 't' were changed to read 'time...'. Further details on the naming convention can be found in the 'features_info.txt' file. 


==================================================================

### Data transformation/processing steps
The run_analysis.R script has been commented to detail the steps carried out in the data transformation. The steps summarised as: 

1. Read all the relevant 'train' and 'test' files into data frames in R. Column names were added and then the all test and train data is added together to make a single data set.
2. Subset the dataframe to only include columns that include mean() or std() measurements.
3. The 'activity ID' column was converted to a factor variable with 6 levels (as per 'activity_labesl.txt')
4. A tidy data set was created was created containing the mean of each feature - for each subject and each activity.
5. a tidyData.csv file was created

==================================================================


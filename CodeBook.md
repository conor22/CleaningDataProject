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
 1. $ subjectid               : int  range 1-30
 2. $ activity                : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..:
 3. $ tbodyaccmeanx           : num  range -1.0 -> +1.0
 4. $ tbodyaccmeany           : num  range -1.0 -> +1.0
 5. $ tbodyaccstdx            : num  range -1.0 -> +1.0
 6. $ tbodyaccstdy            : num  range -1.0 -> +1.0
 7. $ tbodyaccstdz            : num  range -1.0 -> +1.0
 8. $ tgravityaccmeanx        : num  range -1.0 -> +1.0
 9. $ tgravityaccmeany        : num  range -1.0 -> +1.0
 10. $ tgravityaccmeanz        : num  range -1.0 -> +1.0
 11. $ tgravityaccstdx         : num  range -1.0 -> +1.0
 12. $ tgravityaccstdy         : num  range -1.0 -> +1.0
 13. $ tgravityaccstdz         : num  range -1.0 -> +1.0
 14. $ tbodyaccjerkmeanx       : num  range -1.0 -> +1.0
 15. $ tbodyaccjerkmeany       : num  range -1.0 -> +1.0
 16. $ tbodyaccjerkmeanz       : num  range -1.0 -> +1.0
 17. $ tbodyaccjerkstdx        : num  range -1.0 -> +1.0
 18. $ tbodyaccjerkstdy        : num  range -1.0 -> +1.0
 19. $ tbodyaccjerkstdz        : num  range -1.0 -> +1.0
 20. $ tbodygyromeanx          : num  range -1.0 -> +1.0
 21. $ tbodygyromeanz          : num  range -1.0 -> +1.0
 22. $ tbodygyrostdx           : num  range -1.0 -> +1.0
 23. $ tbodygyrostdy           : num  range -1.0 -> +1.0
 24. $ tbodygyrostdz           : num  range -1.0 -> +1.0
 25. $ tbodygyrojerkmeanx      : num  range -1.0 -> +1.0
 26. $ tbodygyrojerkmeany      : num  range -1.0 -> +1.0
 27. $ tbodygyrojerkmeanz      : num  range -1.0 -> +1.0
 28. $ tbodygyrojerkstdx       : num  range -1.0 -> +1.0
 29. $ tbodygyrojerkstdy       : num  range -1.0 -> +1.0
 30. $ tbodygyrojerkstdz       : num  range -1.0 -> +1.0
 31. $ tbodyaccmagmean         : num  range -1.0 -> +1.0
 32. $ tbodyaccmagstd          : num  range -1.0 -> +1.0
 33. $ tgravityaccmagmean      : num  range -1.0 -> +1.0
 34. $ tgravityaccmagstd       : num  range -1.0 -> +1.0
 35. $ tbodyaccjerkmagmean     : num  range -1.0 -> +1.0
 36. $ tbodyaccjerkmagstd      : num  range -1.0 -> +1.0
 37. $ tbodygyromagmean        : num  range -1.0 -> +1.0
 38. $ tbodygyromagstd         : num  range -1.0 -> +1.0
 39. $ tbodygyrojerkmagmean    : num  range -1.0 -> +1.0
 40. $ tbodygyrojerkmagstd     : num  range -1.0 -> +1.0
 41. $ fbodyaccmeanx           : num  range -1.0 -> +1.0
 42. $ fbodyaccmeany           : num  range -1.0 -> +1.0
 43. $ fbodyaccmeanz           : num  range -1.0 -> +1.0
 44. $ fbodyaccstdx            : num  range -1.0 -> +1.0
 45. $ fbodyaccstdy            : num  range -1.0 -> +1.0
 46. $ fbodyaccstdz            : num  range -1.0 -> +1.0
 47. $ fbodyaccjerkmeanx       : num  range -1.0 -> +1.0
 48. $ fbodyaccjerkmeany       : num  range -1.0 -> +1.0
 49. $ fbodyaccjerkmeanz       : num  range -1.0 -> +1.0
 50. $ fbodyaccjerkstdx        : num  range -1.0 -> +1.0
 51. $ fbodyaccjerkstdy        : num  range -1.0 -> +1.0
 52. $ fbodyaccjerkstdz        : num  range -1.0 -> +1.0
 53. $ fbodygyromeanx          : num  range -1.0 -> +1.0
 54. $ fbodygyromeany          : num  range -1.0 -> +1.0
 55. $ fbodygyromeanz          : num  range -1.0 -> +1.0
 56. $ fbodygyrostdx           : num  range -1.0 -> +1.0
 57. $ fbodygyrostdy           : num  range -1.0 -> +1.0
 58. $ fbodygyrostdz           : num  range -1.0 -> +1.0
 59. $ fbodyaccmagmean         : num  range -1.0 -> +1.0
 60. $ fbodyaccmagstd          : num  range -1.0 -> +1.0
 61. $ fbodybodyaccjerkmagmean : num  range -1.0 -> +1.0
 62. $ fbodybodyaccjerkmagstd  : num  range -1.0 -> +1.0
 63. $ fbodybodygyromagmean    : num  range -1.0 -> +1.0
 64. $ fbodybodygyromagstd     : num  range -1.0 -> +1.0
 65. $ fbodybodygyrojerkmagmean: num  range -1.0 -> +1.0
 66. $ fbodybodygyrojerkmagstd : num  range -1.0 -> +1.0
Original column names we altered to conform with best practice variable naming conventions. All names were converted to lower case and all special characters were removed. Further details on the naming convention can be found in the 'features_info.txt' file. 


==================================================================

### Data transformation/processing steps
The run_analysis.R script has been commented to detail the steps carried out in the data transformation. The steps summarised as: 

1. Read all the relevant 'train' and 'test' files into data frames in R. Column names were added and then the all test and train data is added together to make a single data set.
2. Subset the dataframe to only include columns that include mean() or std() measurements.
3. The activity_ID column was converted to a factor variable with 6 levels (as per 'activity_labesl.txt')
4. A tidy data set was created was created containing the mean of each feature - for each subject and each activity.
5. a tidyData.csv file was created

==================================================================


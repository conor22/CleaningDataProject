## STEP 1 - Required: "Merges the training and the test sets to create one data set"
## this has been broken down into Step A and Step B below
## PART A: LOAD TRAIN DATA: load the 3 x train data sets, add column names and combine the data in the following 4 steps
## A1. load 'subject_train.txt' data into dataframe 'subject_train' and name column 'subject_ID'
subject_train <- read.table("subject_train.txt")
names(subject_train)[1] <- paste("subject_ID")

## A2. Load 'X_train.txt' data into a dataframe called X_train and name columns from the 'features.txt' file
X_train <- read.table("X_train.txt")
feature_Names <- read.table("features.txt")
feature_Names[,1] <- NULL
names(X_train) <- paste(feature_Names[,1])

## A3. load 'y_train.txt' data into the 'y_train' dataframe and name the column 'activity' 
y_train <- read.table("y_train.txt")
names(y_train)[1] <- paste("activity")

## A4. now combine all 3 x train data files into 1 dataframe 'all_train'
all_train <- cbind(subject_train, y_train, X_train)

## PART B: LOAD TEST DATA: almost the same as done above - load the data, name the columns and combine the data into a single dataframe
## B1. load 'subject_test.txt' data into dataframe 'subject_test' and name column 'subject_ID'
subject_test <- read.table("subject_test.txt")
names(subject_test)[1] <- paste("subject_ID")

## B2. load 'X_test.txt' data into a dataframe called X_test and name columns from the 'features.txt' file as 
X_test <- read.table("X_test.txt")
names(X_test) <- paste(feature_Names[,1])

## B3. load 'y_test.txt' data into the 'y_test' dataframe and name the column 'activity' 
y_test <- read.table("y_test.txt")
names(y_test)[1] <- paste("activity")

## A4. now combine all 3 x test data files into 1 dataframe 'all_test'
all_test <- cbind(subject_test, y_test, X_test)

## MERGE - merge the all_test and all_train dataframes to make one large dataframe
merged_Data <- rbind(all_train, all_test)

#STEP 2: Required: "Extracts only the measurements on the mean and standard deviation for each measurement."
##subset the data to only include columns relating to mean and standard deviation
mean_sd_cols <- grepl("mean\\(\\)", names(merged_Data)) | grepl("std\\(\\)", names(merged_Data))

## retain the subject_ID and activity columns
mean_sd_cols[1:2] <- TRUE 
## create a new dataframe 'merged_Data_sub' with only the columns needed
merged_Data_sub <- merged_Data[, mean_sd_cols]


##STEP 3: Required: "Uses descriptive activity names to name the activities in the data set"
## the names come from the 'activity_labels.txt' file 
merged_Data_sub$activity <- as.factor(merged_Data_sub$activity)
levels(merged_Data_sub$activity) = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

## STEP 4: Required: "Appropriately labels the data set with descriptive variable names."
## first convert all column names to lower case, then remove all/any special characters
names(merged_Data_sub) <- tolower(names(merged_Data_sub))
names(merged_Data_sub) <- gsub("[[:punct:]]", "", names(merged_Data_sub),)

## the change the column names into more readbale formats
names(merged_Data_sub) <- gsub("^f", "frequency", names(merged_Data_sub))
names(merged_Data_sub) <- gsub("^t", "time", names(merged_Data_sub))
names(merged_Data_sub) <- gsub("accelerometer", "frequency", names(merged_Data_sub))
names(merged_Data_sub) <- gsub("gyro", "gyroscope", names(merged_Data_sub))
names(merged_Data_sub) <- gsub("std", "standarddeviation", names(merged_Data_sub))

## STEP 5: Required: "Creates a second, independent tidy data set with the average of each variable for each activity and each subject."
library(reshape2)
all_melted <- melt(merged_Data_sub, id=c("subjectid", "activity"))
all_complete_tidy <- dcast(all_melted, subjectid+activity ~ variable, mean)


## write the data to a separate file
write.csv(all_complete_tidy, "tidyData.csv", row.names=F)
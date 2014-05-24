## Coursera Getting and Cleaning Data Project
## Tidy Data
## May 16, 2014
## run_analysis.R
library(plyr)

# setwd("~/Documents/Coursera/GetCleanData/UCI HAR Dataset")

## Load in the raw data sets
testData <- read.table("test/X_test.txt")
dim(testData)
# [1] 2947  561
trainData <- read.table("train/X_train.txt")
dim(trainData)
# [1] 7352  561

## Acitivity Data sets
testActivities <- read.table("test/y_test.txt")
dim(testActivities)
# [1] 2947    1
unique(testActivities)
# V1
# 1    5
# 32   4
# 56   6
# 80   1
# 110  3
# 134  2
trainActivities <- read.table("train/y_train.txt")
dim(trainActivities)
# [1] 7352    1

## Subject Data sets
testSubject <- read.table("test/subject_test.txt")
dim(testSubject)
# [1] 2947    1
trainSubject <- read.table("train/subject_train.txt")
dim(testSubject)
# [1] 2947    1

## Label Data sets
featLabel <- read.table("features.txt")
dim(featLabel)
# [1] 561   2
actLabel <- read.table("activity_labels.txt")
dim(actLabel)
# [1] 6 2

## Tidy up names (featLabel) without making them too long
featLabel$V2 <- sub("^t", "time", featLabel$V2)
featLabel$V2 <- sub("^f", "frequency", featLabel$V2)
featLabel$V2 <- gsub("-", "", featLabel$V2)
featLabel$V2 <- gsub("\\(", "", featLabel$V2)
featLabel$V2 <- gsub("\\)", "", featLabel$V2)
featLabel$V2 <- gsub("acc", "Accel", featLabel$V2)
featLabel$V2 <- gsub("mean", "Mean", featLabel$V2)
featLabel$V2 <- gsub("std", "Std", featLabel$V2)
featLabel$V2 <- sub(",", "", featLabel$V2)

## Add names to data set (featLabel to Data)
colnames(testData) <- featLabel$V2
colnames(trainData) <- featLabel$V2

## Add train/test column to Data
testData$dataType <- as.character("test")
trainData$dataType <- as.character("train")

## Add activities column to data (Activities)
testactivitieslist <- testActivities[,1]
testData$activities <- as.numeric(testactivitieslist)
trainactivitieslist <- trainActivities[,1]
trainData$activities <- as.numeric(trainactivitieslist)

## Add subject column to data(Subject)
testsubjectlist <- testSubject[,1]
testData$subject <- as.numeric(testsubjectlist)
trainsubjectlist <- trainSubject[,1]
trainData$subject <- as.numeric(trainsubjectlist)

## Combine trainData and testData with rbind
combinedData <- rbind(testData, trainData)

## Change Activities values from numbers to labels (using actLabels)
combinedData$activities <- gsub("1", "WALKING", combinedData$activities)
combinedData$activities <- gsub("2", "WALKING.UPSTAIRS", combinedData$activities)
combinedData$activities <- gsub("3", "WALKING.DOWNSTAIRS", combinedData$activities)
combinedData$activities <- gsub("4", "SITTING", combinedData$activities)
combinedData$activities <- gsub("5", "STANDING", combinedData$activities)
combinedData$activities <- gsub("6", "LAYING", combinedData$activities)
unique(combinedData$activities)
# [1] "STANDING"           "SITTING"            "LAYING"             "WALKING"            "WALKING.DOWNSTAIRS"
# [6] "WALKING.UPSTAIRS" 

## Save the full tidy data
write.table(combinedData, "Tidy_Data.txt")

## Subset out the mean and stddev data
combinedStd <- grep("Std", names(combinedData), value = TRUE)
combinedMean <- grep("Mean",names(combinedData), value = TRUE)

subColumns <- c("activities", "subject", combinedStd, combinedMean)

subData <- combinedData[,subColumns]

# Calculate Means per Subject and Activity
subDataAvg <- aggregate(subData[,3:88], by=list(subData$activities, subData$subject), mean)

names(subDataAvg) <- gsub("Group.1", "activities", names(subDataAvg))
names(subDataAvg) <- gsub("Group.2", "subject", names(subDataAvg))

write.table(subDataAvg, "average_subject_and_activity.txt", row.names = FALSE)

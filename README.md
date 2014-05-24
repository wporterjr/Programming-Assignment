---
title: "README"
author: "wporter"
date: "May 19, 2014"
---

## Getting and Cleaning Data Project

## 
## Introduction

This is a exercise in cleaning up a messy data set for analysis as well as the creation of supporting documentation on how it was done.  This Rmd file was used to create a pdf README file for documentation.

A full description of the experiment is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Briefly, the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING.UPSTAIRS, WALKING.DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  The resulting raw data was collected (see the "Inertial Signals" folders) and various basic statistical measurements were performed on it.  The resulting data sets are in a multitude of individual file sets that need to be combined, cleaned up, and subsetted to meet the requirements of the assignment.

## 
## Instructions from the assignment

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


## Codebook
The codebook file contains a detailed description of the variables in the data set and can be found in CodeBook.md (as well as CodeBook.Rmd and CodeBook.pdf)


## Code to make a Tidy Data Set:
    run_analysis.R

## Additional README files in Rmd and pdf formats that include the source code for the assignment can be viewed in this repository

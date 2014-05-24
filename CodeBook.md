---
title: "CodeBook"
author: "wporter"
date: "May 19, 2014"
---

# Getting and Cleaning Data Project
Codebook for the tidy data set:
average_subject_and_activity.txt
that was created by running the run_analysis.R script on the original raw data from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Abstract: 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

# Original Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING.UPSTAIRS, WALKING.DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## A detailed, step by step explanation of the R script is contained within the README.Rmd and resulting README.pdf files
## Briefly, the run_analysis.R script does the following:

* Loads in the raw data sets (data must be in your current working directory)
* Rename all the descriptive labels to something more readable without making them too long
* Add a names column to the data
* Add a test/train column to the data to be able to keep track of their origins
* Add an activities column to the data
* Add a subject column to the data
* Combine the test and train data sets into one complete data set
* Change the activities values from numbers to descriptive labels
* Save the entire tidy data set in case we want to use it some time in the future
* Subset out the mean and standard deviation data
* Calculate the means per subject and activity for the subset of data
* Save the resulting tidy data set to submit for this project

## The resulting tidy data set was exported in txt format to the file "average_subject_and_activity.txt"


# Descriptions for all values in the Tidy Data Set

"activities": The name of each activity monitored

"subject": The assigned number of each subject in the study

"timeBodyAccStdX": The average value of the standard deviation of the time domain body acceleration signal in the X direction

"timeBodyAccStdY":The average value of the standard deviation of the time domain body acceleration signal in the Y direction

"timeBodyAccStdZ": The average value of the standard deviation of the time domain body acceleration signal in the Z direction

"timeGravityAccStdX": The average value of the standard deviation of the time domain gravity acceleration signal in the X direction

"timeGravityAccStdY": The average value of the standard deviation of the time domain gravity acceleration signal in the Y direction

"timeGravityAccStdZ": The average value of the standard deviation of the time domain gravity acceleration signal in the Z direction

"timeBodyAccJerkStdX": The average value of the standard deviation of the time domain body linear acceleration jerk signal in the X direction

"timeBodyAccJerkStdY": The average value of the standard deviation of the time domain body linear acceleration jerk signal in the Y direction

"timeBodyAccJerkStdZ": The average value of the standard deviation of the time domain body linear acceleration jerk signal in the Z direction

"timeBodyGyroStdX": The average value of the standard deviation of the time domain body angular velocity signal in the X direction

"timeBodyGyroStdY": The average value of the standard deviation of the time domain body angular velocity signal in the Y direction

"timeBodyGyroStdZ": The average value of the standard deviation of the time domain body angular velocity signal in the Z direction

"timeBodyGyroJerkStdX": The average value of the standard deviation of the time domain body angular velocity jerk signal in the X direction

"timeBodyGyroJerkStdY": The average value of the standard deviation of the time domain body angular velocity jerk signal in the Y direction

"timeBodyGyroJerkStdZ": The average value of the standard deviation of the time domain body angular velocity jerk signal in the Z direction

"timeBodyAccMagStd": The average value of the standard deviation of the magnitude of the time domain body acceleration signal

"timeGravityAccMagStd": The average value of the standard deviation of the magnitude of the time domain gravity acceleration signal

"timeBodyAccJerkMagStd": The average value of the standard deviation of the magnitude of the time domain body linear acceleration jerk signal

"timeBodyGyroMagStd": The average value of the standard deviation of the magnitude of the time domain body angular velocity signal

"timeBodyGyroJerkMagStd": The average value of the standard deviation of the magnitude of the time domain body angular velocity jerk signal

"frequencyBodyAccStdX": The average value of the standard deviation of the frequency domain body acceleration signal in the X direction

"frequencyBodyAccStdY": The average value of the standard deviation of the frequency domain body acceleration signal in the Y direction

"frequencyBodyAccStdZ": The average value of the standard deviation of the frequency domain body acceleration signal in the Z direction

"frequencyBodyAccJerkStdX": The average value of the standard deviation of the frequency domain body linear acceleration jerk signal in the X direction

"frequencyBodyAccJerkStdY": The average value of the standard deviation of the frequency domain body linear acceleration jerk signal in the Y direction

"frequencyBodyAccJerkStdZ": The average value of the standard deviation of the frequency domain body linear acceleration jerk signal in the Z direction

"frequencyBodyGyroStdX": The average value of the standard deviation of the frequency domain body angular velocity signal in the X direction

"frequencyBodyGyroStdY": The average value of the standard deviation of the frequency domain body angular velocity signal in the Y direction

"frequencyBodyGyroStdZ": The average value of the standard deviation of the frequency domain body angular velocity signal in the Z direction

"frequencyBodyAccMagStd": The average value of the standard deviation of magnitude of the frequency domain body acceleration signal

"frequencyBodyBodyAccJerkMagStd": The average value of the standard deviation of the magnitude of the frequency domain body linear acceleration jerk signal

"frequencyBodyBodyGyroMagStd": The average value of the standard deviation of the magnitude of the frequency domain body angular velocity signal

"frequencyBodyBodyGyroJerkMagStd": The average value of the standard deviation of the magnitude of the frequency domain body angular velocity jerk signal

"timeBodyAccMeanX": The average value of the mean of the time domain body acceleration signal in the X direction

"timeBodyAccMeanY": The average value of the mean of the time domain body acceleration signal in the Y direction

"timeBodyAccMeanZ": The average value of the mean of the time domain body acceleration signal in the Z direction

"timeGravityAccMeanX": The average value of the mean of the time domain gravity acceleration signal in the X direction

"timeGravityAccMeanY": The average value of the mean of the time domain gravity acceleration signal in the Y direction

"timeGravityAccMeanZ": The average value of the mean of the time domain gravity acceleration signal in the Z direction

"timeBodyAccJerkMeanX": The average value of the mean of the time domain body linear acceleration jerk signal in the X direction

"timeBodyAccJerkMeanY": The average value of the mean of the time domain body linear acceleration jerk signal in the Y direction

"timeBodyAccJerkMeanZ": The average value of the mean of the time domain body linear acceleration jerk signal in the Z direction

"timeBodyGyroMeanX": The average value of the mean of the time domain body angular velocity signal in the X direction

"timeBodyGyroMeanY": The average value of the mean of the time domain body angular velocity signal in the Y direction

"timeBodyGyroMeanZ": The average value of the mean of the time domain body angular velocity signal in the Z direction

"timeBodyGyroJerkMeanX": The average value of the mean of the time domain body angular velocity jerk signal in the X direction

"timeBodyGyroJerkMeanY": The average value of the mean of the time domain body angular velocity jerk signal in the Y direction

"timeBodyGyroJerkMeanZ": The average value of the mean of the time domain body angular velocity jerk signal in the Z direction

"timeBodyAccMagMean": The average value of the mean of the magnitude of the time domain body acceleration signal

"timeGravityAccMagMean": The average value of the mean of the magnitude of the time domain gravity acceleration signal

"timeBodyAccJerkMagMean: The average value of the mean of the magnitude of the time domain body linear acceleration jerk signal

"timeBodyGyroMagMean": The average value of the magnitude of the mean of the time domain body angular velocity signal

"timeBodyGyroJerkMagMean": The average value of the mean of the magnitude of the time domain body angular velocity jerk signal

"frequencyBodyAccMeanX": The average value of the mean of the frequency domain body acceleration signal in the X direction

"frequencyBodyAccMeanY": The average value of the mean of the frequency domain body acceleration signal in the Y direction

"frequencyBodyAccMeanZ": The average value of the mean of the frequency domain body acceleration signal in the Z direction

"frequencyBodyAccMeanFreqX": The average value of the mean of the frequency domain body acceleration signal frequency in the X direction

"frequencyBodyAccMeanFreqY": The average value of the mean of the frequency domain body acceleration signal frequency in the Y direction

"frequencyBodyAccMeanFreqZ": The average value of the mean of the frequency domain body acceleration signal frequency in the Z direction

"frequencyBodyAccJerkMeanX": The average value of the mean of the frequency domain body linear acceleration jerk signal in the X direction

"frequencyBodyAccJerkMeanY": The average value of the mean of the frequency domain body linear acceleration jerk signal in the Y direction

"frequencyBodyAccJerkMeanZ": The average value of the mean of the frequency domain body linear acceleration jerk signal in the Z direction

"frequencyBodyAccJerkMeanFreqX": The average value of the mean of the frequency domain body linear acceleration jerk signal frequency in the X direction

"frequencyBodyAccJerkMeanFreqY": The average value of the mean of the frequency domain body linear acceleration jerk signal frequency in the Y direction

"frequencyBodyAccJerkMeanFreqZ": The average value of the mean of the frequency domain body linear acceleration jerk signal frequency in the Z direction

"frequencyBodyGyroMeanX": The average value of the mean of the frequency domain body angular velocity signal in the X direction

"frequencyBodyGyroMeanY": The average value of the mean of the frequency domain body angular velocity signal in the Y direction

"frequencyBodyGyroMeanZ": The average value of the mean of the frequency domain body angular velocity signal in the Z direction

"frequencyBodyGyroMeanFreqX": The average value of the mean of the frequency domain body angular velocity signal frequency in the X direction

"frequencyBodyGyroMeanFreqY": The average value of the mean of the frequency domain body angular velocity signal frequency in the Y direction

"frequencyBodyGyroMeanFreqZ": The average value of the mean of the frequency domain body angular velocity signal frequency in the Z direction

"frequencyBodyAccMagMean": The average value of the mean of the magnitude of the frequency domain body acceleration signal

"frequencyBodyAccMagMeanFreq": The average value of the mean of the magnitude of the frequency domain body acceleration signal frequency

"frequencyBodyBodyAccJerkMagMean": The average value of the mean of the magnitude of the frequency domain body linear acceleration jerk signal

"frequencyBodyBodyAccJerkMagMeanFreq": The average value of the mean of the magnitude of the frequency domain body linear acceleration jerk signal frequency

"frequencyBodyBodyGyroMagMean": The average value of the mean of the magnitude of the frequency domain body angular velocity signal

"frequencyBodyBodyGyroMagMeanFreq": The average value of the mean of the magnitude of the frequency domain body angular velocity signal frequency

"frequencyBodyBodyGyroJerkMagMean": The average value of the mean of the magnitude of the frequency domain body angular velocity jerk signal

"frequencyBodyBodyGyroJerkMagMeanFreq": The average value of the mean of the magnitude of the frequency domain body angular velocity jerk signal frequency

"angletBodyAccMeangravity": The average angle of the mean gravity acceleration signals

"angletBodyAccJerkMeangravityMean": The average angle of the mean gravity jerk acceleration signals

"angletBodyGyroMeangravityMean": The average angle of the mean gravity gyro acceleration signals

"angletBodyGyroJerkMeangravityMean": The average angle of the mean gravity gyro jerk acceleration signals

"angleXgravityMean": The mean angle of the mean gravity signals in the X direction

"angleYgravityMean": The mean angle of the mean gravity signals in the Y direction

"angleZgravityMean": The mean angle of the mean gravity signals in the Z direction

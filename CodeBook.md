#CodeBook

## Dataset

Human Activity Recognition Using Smartphones Data Set -
[more info](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
, [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Features

* Measurements : 66 type of sensor signals (accelerometer and gyroscope) and only mean and sd (eg :  tbodyacc-mean-x).
* Activity : activities performed by the subjects : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* Subject: identifier of the subject volunteer, 30 in total.


## Steps

* Download the zip file and unzipped in the same directory of the script file
* Merging the train set and the test set
* Filter the features for just the mean and the sd measurements
* Adding activities to the merged dataset with descriptive names
* Creating a tidy data set with the average of each variable for each activity and each subject
* Writing the tidy data to the filesystem in csv format with .txt extension

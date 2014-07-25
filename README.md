getdata_peer1
=============
coursea.org Getting and Cleaning Data peer assessment 1

This is my submission for peer assessment 1 for course Getting and Cleaning data.
author of submissison: Juraj Galbavy

##Source of Data

original data was obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data used in this data processing is obtained from thik ling provided by course materials:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##List of files

- run_analysis.R - script that does data merging and creates new tidy dataset.

- extracted.txt - new dataset with mean and standard deviation of variables extracted from original data sets

- tidy.txt - new dataset in text table format (read.table defaults)

- CodeBook.md - description of tidy.txt

##Instructions to run the script

1.copy the zip file into your R/RStudio working directory

2.run command: source run_analysis.R

3.The zip file will be then extracted into the working directory and two new files, extracted.txt and tidy.txt datasets should be created.

## extracted.txt
This dataset contains mean and standard deviations of variables from original
dataset, this file can be read in R using read.table with default values.

There are 81 columns total:
- "tBodyAcc-mean()-X" ... "fBodyBodyGyroJerkMag-meanFreq()" - columns 1..79: those are columns from original merged train and test datasets. *Test* dataset is merged first, *train* dataset last.

- SubjectID - column number 80: ID number of test subject for a measurement in a row

- Activity - column number 81: text name for an activity performed

================
Example of loading the dataset in R: extracted <- read.table('extracted.txt');


## tidy.txt
This file contains average values for every variable from extracted.txt aggregated by subject
and activity. The file can be read in R using defaults and function read.table.
Description of content of this file is in CodeBook.md.
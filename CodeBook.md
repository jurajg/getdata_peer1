## tidy.txt

This dataset contains mean values of extracted variables aggregated by Activity and SubjectID.
Data is aggregated from extracted.txt dataset, which was obtain by selecting only mean and standard
deviations of variables from original dataset.

## How to load data

This file can be read in R using defaults and function read.table:

extracted <- read.table('extracted.txt');

## List of columns

## Activity - column number 1
Activity performed by a test/train subject:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## SubjectID - column number 2
ID of subject performing activity

The rest of colums are mean values for calculations from original data:

## Aggregate mean values

- tBodyAcc.mean...X - column number 3
- tBodyAcc.mean...Y - column number 4
- tBodyAcc.mean...Z - column number 5
- tBodyAcc.std...X - column number 6
- tBodyAcc.std...Y - column number 7
- tBodyAcc.std...Z - column number 8
- tGravityAcc.mean...X - column number 9
- tGravityAcc.mean...Y - column number 10
- tGravityAcc.mean...Z - column number 11
- tGravityAcc.std...X - column number 12
- tGravityAcc.std...Y - column number 13
- tGravityAcc.std...Z - column number 14
- tBodyAccJerk.mean...X - column number 15
- tBodyAccJerk.mean...Y - column number 16
- tBodyAccJerk.mean...Z - column number 17
- tBodyAccJerk.std...X - column number 18
- tBodyAccJerk.std...Y - column number 19
- tBodyAccJerk.std...Z - column number 20
- tBodyGyro.mean...X - column number 21
- tBodyGyro.mean...Y - column number 22
- tBodyGyro.mean...Z - column number 23
- tBodyGyro.std...X - column number 24
- tBodyGyro.std...Y - column number 25
- tBodyGyro.std...Z - column number 26
- tBodyGyroJerk.mean...X - column number 27
- tBodyGyroJerk.mean...Y - column number 28
- tBodyGyroJerk.mean...Z - column number 29
- tBodyGyroJerk.std...X - column number 30
- tBodyGyroJerk.std...Y - column number 31
- tBodyGyroJerk.std...Z - column number 32
- tBodyAccMag.mean.. - column number 33
- tBodyAccMag.std.. - column number 34
- tGravityAccMag.mean.. - column number 35
- tGravityAccMag.std.. - column number 36
- tBodyAccJerkMag.mean.. - column number 37
- tBodyAccJerkMag.std.. - column number 38
- tBodyGyroMag.mean.. - column number 39
- tBodyGyroMag.std.. - column number 40
- tBodyGyroJerkMag.mean.. - column number 41
- tBodyGyroJerkMag.std.. - column number 42
- fBodyAcc.mean...X - column number 43
- fBodyAcc.mean...Y - column number 44
- fBodyAcc.mean...Z - column number 45
- fBodyAcc.std...X - column number 46
- fBodyAcc.std...Y - column number 47
- fBodyAcc.std...Z - column number 48
- fBodyAcc.meanFreq...X - column number 49
- fBodyAcc.meanFreq...Y - column number 50
- fBodyAcc.meanFreq...Z - column number 51
- fBodyAccJerk.mean...X - column number 52
- fBodyAccJerk.mean...Y - column number 53
- fBodyAccJerk.mean...Z - column number 54
- fBodyAccJerk.std...X - column number 55
- fBodyAccJerk.std...Y - column number 56
- fBodyAccJerk.std...Z - column number 57
- fBodyAccJerk.meanFreq...X - column number 58
- fBodyAccJerk.meanFreq...Y - column number 59
- fBodyAccJerk.meanFreq...Z - column number 60
- fBodyGyro.mean...X - column number 61
- fBodyGyro.mean...Y - column number 62
- fBodyGyro.mean...Z - column number 63
- fBodyGyro.std...X - column number 64
- fBodyGyro.std...Y - column number 65
- fBodyGyro.std...Z - column number 66
- fBodyGyro.meanFreq...X - column number 67
- fBodyGyro.meanFreq...Y - column number 68
- fBodyGyro.meanFreq...Z - column number 69
- fBodyAccMag.mean.. - column number 70
- fBodyAccMag.std.. - column number 71
- fBodyAccMag.meanFreq.. - column number 72
- fBodyBodyAccJerkMag.mean.. - column number 73
- fBodyBodyAccJerkMag.std.. - column number 74
- fBodyBodyAccJerkMag.meanFreq.. - column number 75
- fBodyBodyGyroMag.mean.. - column number 76
- fBodyBodyGyroMag.std.. - column number 77
- fBodyBodyGyroMag.meanFreq.. - column number 78
- fBodyBodyGyroJerkMag.mean.. - column number 79
- fBodyBodyGyroJerkMag.std.. - column number 80
- fBodyBodyGyroJerkMag.meanFreq.. - column number 81



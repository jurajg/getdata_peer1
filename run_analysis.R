# filename:  run_analysis.R
# course: Getting and Cleaning Data
# assignment: Course Project
# author: Juraj Galbavy

# unzip data sets
unzip('getdata_projectfiles_UCI HAR Dataset.zip');
# name of a directory inside of zip with datasets
datadir <- 'UCI HAR Dataset';

# =========
# Loading data, steps 1,3,4
# 1.Merges the training and the test sets to create one data set.
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 

# load activity labels as strings
fname <- file.path(datadir,'activity_labels.txt');
activity_data <- read.table(fname, stringsAsFactors=FALSE);
activity_labels <- activity_data[,2];

# load variable names
fname <- file.path(datadir,'features.txt');
features_data <- read.table(fname, stringsAsFactors=FALSE);
features_labels <- features_data[,2];

# loads a test or a train set to data frame
# inputs: x_fname - file name for X variable data
#         y_fname - file name for Y activity labels
#         subject_fname - file name for subject list
# global variables: needs activity_labels, features_labels
# returns: data frame with variable measurements (observations)
# linked to subjects and factor activity names
load_set <- function(x_fname, y_fname, subject_fname)
{
    x_data <- read.table(x_fname);
    y_data <- read.table(y_fname, col.names=c('Activity'));
    subject_data <- read.table(subject_fname, col.names=c('SubjectID'));
    
    # add column names to data
    colnames(x_data) <- features_labels;
    #colnames(y_data) <- c('Activity');
    #colnames(subject_data) <- c('Subject');

    # map activity numbers to character activity labels
    y_data$Activity <- activity_labels[y_data[,1]]
    # make Activity a factor with proper level values
    y_data$Activity <- factor(y_data[,1], levels=activity_labels);
    
    # join data together
    x_data$SubjectID <- subject_data$SubjectID;
    x_data$Activity <- y_data$Activity;
    
    y_data <- NULL; subject_data <- NULL; # free mem
    x_data
}

# load test data set
xfname <- file.path(datadir,'test', 'X_test.txt');
yfname <- file.path(datadir,'test', 'Y_test.txt');
subject_fname <- file.path(datadir,'test', 'subject_test.txt');
d_test <- load_set(xfname, yfname, subject_fname);

# load train dataset
xfname <- file.path(datadir,'train', 'X_train.txt');
yfname <- file.path(datadir,'train', 'Y_train.txt');
subject_fname <- file.path(datadir,'train', 'subject_train.txt');
d_train <- load_set(xfname, yfname, subject_fname);

# merge datasets
data <- rbind(d_test, d_train);
d_test <- NULL; d_train <- NULL; # free mem

# =========
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

# find the columns to extract (mean and standard deviation) using regex search 
means <- grep("-mean", features_labels);
stds <- grep("-std", features_labels);

# select only means and stds
extracted <- data[,sort(c(means,stds))];
extracted$SubjectID <- data$SubjectID;
extracted$Activity <- data$Activity;

# write extracted mean and std data to new file
fname <- 'extracted.txt';
write.table(extracted, fname);

# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
fname <- 'tidy.txt';
tidy <- aggregate(.~Activity + SubjectID, extracted, mean,  na.action=na.omit);
write.table(tidy, fname);


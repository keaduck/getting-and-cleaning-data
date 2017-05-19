##README
##Getting and Cleaning Data Course Project
###Kea Duckenfield
###May 2017

This project takes the Human Activity Recognition Using Smartphones , Version 1.0, data set [1] and creates tidy data by doing the following:
========================================================================================================
###1. Merge the training and the test sets to create one data set.

BACKGROUND: The data come in two folders, "train" and "test." There is also a "features" file. All files have .txt suffixes. Examining the data in Excel shows that X_train.txt and X_test.txt contain the actual data (which have been derived from raw sensor measurements). There are 561 columns in each. The "features" file contains one column of 561 values, so "features" is inferred to be the headers for the data columns. The training data has 7,352 rows (records), and the testing data has 2,947 rows. Each folder also contains two additional files containing the subject ID and activity ID for each record. This is confirmed by the dimensions of the files (one column, 7,352 rows for training and 2,947 rows for testing each).

APPROACH: put the training and testing data sets together, then merge them into one data set.
I. Attach the headers (in "features.txt") to the training data (in "X_train.txt")
II. Merge the training subject ("subject_train.txt") and activity ("y_train.txt") ID columns
III. Append the training subject and activity ID information to the training data to create a complete training data set
IV. Repeat this procedure (steps I-III) with the testing data
V. Combine the training and testing data sets

========================================================================================================
###2.Extract only the measurements on the mean and standard deviation for each measurement.

INTERPRETATION OF THIS INSTRUCTION: This instruction was interpreted to refer only to the derived measurements that contain either "mean" or "std" at the end of their headers. I did not include the "meanFreq" measurements, or the signals averaged over a window sample ("<>Mean"), because these are not accompanied by a standard deviation measurement. Because of the phrasing "mean and standard deviation," which suggests pairs of descriptive statistics for each measurement, the mean measurements without accompanying standard deviation do not seem to me to be part of the requirement.

APPROACH: Exctract means, then standard deviations, then combine the two.
I. Use grep() to find desired column names, and subset on the results of grep()
II. Combine using cbind()

========================================================================================================
###3. Use descriptive activity names to name the activities in the data set.

BACKGROUND: the data uses numbers to denote the activities. The file "activity_labels.txt" provides the key: 1 = walking, 2 = walking upstairs, 3 = walking downstairs, 4 = sitting, 5 = standing, and 6 = lying down. I chose to use one-word terms to make the dataset tidier: walking, climbing, descending, sitting, standing, and lying, respectively.

APPROACH: Use subsetting to replace numeric ids with one-word descriptive terms.
I. Example: data$activityid[data$activityid == 1] <- "walking"

========================================================================================================
###4. Appropriately label the data set with descriptive variable names.

INTERPRETATION OF THIS INSTRUCTION: I actually consider the variable names ("features") that came with the source data to be reasonably descriptive, so I used them. 

APPROACH: Thus, this requirement was actually met in step 1 above. A more detailed description of each variable is given in the code book along with additional information (format, range of values).

========================================================================================================
###5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

INTERPRETATION OF THIS INSTRUCTION: I took this to mean that the second data set should provide the average of each variable for each subject by activity (for example, one variable would be the average mean of the linear body acceleration in the X dimension for subject 1 when walking). This is because I could not see how a single tidy data set could include the average values for each variable for each subject AND the average values for each variable for each activity.

APPROACH: Aggregate by subjectid and activityid, then clean up the data set.
I. aggregate()
II. Remove two excess columns, then rename subjectid and activityid columns, then reorder.










[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
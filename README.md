#README

This file shows information about the R script found in the file "run_analysis.R"

## Introduction

The script is organized as commented in order to follow the five steps described in the assignment definition:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Description

After loading the files by sourcing the code in the file "get_data.R", the script starts with the first step. Firstly, it loads the data, activity labels and subject ids for the training and testing sets from the appropriate files. After that, merges are done with cbind() and rbind() to create a single data set with subjects and activities as columns and all the rows of the training and testing sets.

Subsequently, the scripts begins the second step, firstly by loading the features from the appropriate file, then by using grep to extract only those with "mean()" or "std()" in the name. Finally, using the extracted features, it subsets the initial data set to get only the desired 66 columns (plus subject and activity).

For the third step, the script obtains the activity names from the appropriate file then use the definition to adjust the labels in the "Activity" columns. It does that by setting factor labels for the column, which is done with the "factor" function. With this solution, no merge were necessary.

The fourth step is simply done by adjusting the names found in the "features.txt" file for the selected features, and setting them as column names in the main data.

Finally, the fifth and last step is done with the dplyr package, because it was found easier to use it for group by operations. The new tidy data is created by grouping by subject and activity, then by summarizing all other columns with the function "mean()". In the end, the column names are adjusted to represent the new meaning and the text file "tidy_data.txt" is created with the "write.table()" function.

The final created tidy data contains 180 rows (one for each subject and each activity - 30 * 6), and 68 columns. The file "Codebook.md" contains more information about the data.

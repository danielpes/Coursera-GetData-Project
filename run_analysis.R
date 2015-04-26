source("get_data.R")

# 1.1 Obtain training data:
train_data <- read.table("data/UCI HAR Dataset/train/X_train.txt")
train_subjects <- read.table("data/UCI HAR Dataset/train/subject_train.txt",col.names="Subject")
train_activities <- read.table("data/UCI HAR Dataset/train/y_train.txt",col.names="Activity")
train_data <- cbind(train_subjects,train_activities,train_data)

# 1.2 Obtain testing data:
test_data <- read.table("data/UCI HAR Dataset/test/X_test.txt")
test_subjects <- read.table("data/UCI HAR Dataset/test/subject_test.txt",col.names="Subject")
test_activities <- read.table("data/UCI HAR Dataset/test/y_test.txt",col.names="Activity")
test_data <- cbind(test_subjects,test_activities,test_data)

# 1.3 Combine training and testing data in a single data.frame:
raw_data <- rbind(train_data,test_data)

# 1.4 Remove variables to free memory:
rm(train_data)
rm(train_subjects)
rm(train_activities)
rm(test_data)
rm(test_subjects)
rm(test_activities)

# 2.1 Obtain all features names from the file:
features <- read.table("data/UCI HAR Dataset/features.txt",header=F,sep=" ",as.is=T)

# 2.2 Subset the features to get only those with "mean()" or "std()" in the name:
desired_features <- features[grep("(mean\\(\\))|(std\\(\\))",features[,2]),]

# 2.3 Subset the data to get only the columns with the desired features:
main_data <- raw_data[,c(1,2,desired_features[,1]+2)]
rm(raw_data)

# 3.1 Obtain activity names from the file:
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt")

# 3.2 Use the activities names to label them properly:
main_data$Activity <- factor(main_data$Activity,labels=activities[,2])

# 4.1 Prepare labels from the features obtained from the file:
labels <- desired_features[,2]
labels <- gsub("-"," ",labels)
labels <- gsub("\\(","",labels)
labels <- gsub("\\)","",labels)

# 4.2 Set these labels in the main data:
colnames(main_data) <- c("Subject","Activity",labels)

# 5.1 Load dplyr (easier to do 'group by' operations)
library(dplyr)

# 5.2 Group and summarise data, calculating averages for each subject and activity:
tidy_data <- group_by(main_data,Subject,Activity)
tidy_data <- summarise_each(tidy_data,funs(mean))

# 5.3 Rename columns:
colnames(tidy_data) <- c(
    colnames(tidy_data)[1:2], # "Subject" and "Activity"
    paste(
        colnames(tidy_data)[3:length(colnames(tidy_data))], # Variables
        "- AVG"
    )
)

# 5.4 Write the tidy data to a text file:
write.table(tidy_data,"tidy_data.txt",row.names=F)

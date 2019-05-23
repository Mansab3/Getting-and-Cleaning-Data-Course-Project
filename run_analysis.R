# run_analysis.R - Data cleaning assignment.
# Project tidy data
#**********************************************

# Reading required file in R after downloading etdata-projectfiles-UCI HAR Dataset the files 
# in working  directory
features<-read.table("features.txt") # file has features for activity types
xtest<-read.table("x_test.txt") # File has test feature readings.
ytest<-read.table("y_test.txt") # File test activity details
xtrain<-read.table("x_train.txt") # File has train feature readings.
ytrain<-read.table("y_train.txt") # File has train activity details
actlabels<-read.table("activity_labels.txt") # File has labels for all six activity numbers
subtest<-read.table("subject_test.txt") # Test activity number
subtrain<-read.table("subject_train.txt") # Train activity number
features<-read.table("features.txt") # feature details


# merging test and train activity details into subject
subject<-rbind(subtest,subtrain)
# merging test and train feature readings into x
x <- rbind(xtest,xtrain)

# merging test and train activities into y
y <- rbind(ytest,ytrain)


#finding the indices for features that has mean() or standard deviation() as name
index<-grep("mean\\(\\)|std\\(\\)",features[,2])

# Filetering only features columns that has mean() or standard deviation() as name
x <-x[,index]


# Replacing activity number with activity name
y[,1]<- actlabels[y[,1],2]


# Creating factor for feature names
names <-features[index,2]

# Updating columns names with feature names using factor indices
names(x) <- names

# Name subject column
names(subject)<-"SubjectID"

# Name activity column
names(y)<-"Activity"

# creating new data set by merging subject, activity and features
CleanData<-cbind(subject, y, x)

CleanData <- data.table(CleanData)

# averaging mean and standard deviation for each variable of subject and activity
tidydataF<- CleanData[ , lapply(.SD, mean), by = 'SubjectID,Activity']

# writing and creating TidyData in working directory
write.table(tidydataF, file = "TidyData.txt", row.names = FALSE)

# Sample displaying tBodyAcc-mean()-X by subject and activity id 
tidydataF[,1:3]


#       SubjectID           Activity tBodyAcc-mean()-X
# 1:         2           STANDING         0.2779115
# 2:         2            SITTING         0.2770874
# 3:         2             LAYING         0.2813734
# 4:         2            WALKING         0.2764266
# 5:         2 WALKING_DOWNSTAIRS         0.2776153
# ---                                               
#    176:        30            SITTING         0.2683361
# 177:        30             LAYING         0.2810339
# 178:        30            WALKING         0.2764068
# 179:        30 WALKING_DOWNSTAIRS         0.2831906
# 180:        30   WALKING_UPSTAIRS         0.2714156

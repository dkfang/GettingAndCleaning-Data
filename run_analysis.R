# Getting and Cleaning Data
# Final Assignment
# DongKai Fang
rm(list = ls())
library(RCurl)
# getwd()
# setwd("/Users/AlexF/Dropbox/R-Coursera/Getting and Cleaning data/week4")

# Merges the training and the test sets to create on data set
x.train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x.test <- read.table("./UCI HAR Dataset/test/X_test.txt")
x <- rbind(x.train, x.test)
rm(list = ls()[which(ls() %in% c( "x.train", "x.test"))])
# str(x)
# head(x,10)

y.train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y.test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y <- rbind(y.train, y.test)
rm(list = ls()[which(ls() %in% c( "y.train", "y.test"))])

subj.train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subj.test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subj <- rbind(subj.train, subj.test)
rm(list = ls()[which(ls() %in% c( "subj.train", "subj.test"))])

# Extracts only the measurements on the mean 
# and standard deviation for each measurement from features data
features <- read.table("./UCI HAR Dataset/features.txt")
# dim(features)
# names(features)
# head(features$V2,10)
mean.sd <- grep("-mean\\(\\)|-std\\(\\)", features[,2]) 
x.mean.sd <- x[,mean.sd]

# Uses descriptive activity names 
names(x.mean.sd) <- features[mean.sd,2]
# convert all letters to lower case
names(x.mean.sd) <- tolower(names(x.mean.sd))
# eliminates () 
names(x.mean.sd) <- gsub("\\(|\\)","", names(x.mean.sd))

# Loaded activities data
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
activities[,2] <- tolower(as.character(activities[,2]))
# eliminates _ in second column
activities[,2] <- gsub("_", "", activities[,2])

y[,1] = activities[y[, 1], 2]
# Labels the data with activity names
colnames(y) <- "activity"
colnames(subj) <- "subject"
mydata <- cbind (subj, x.mean.sd, y)
# str(mydata)

if (!file.exists("./tidyData")){
      dir.create("./tidyData")
}
write.table(mydata, "./tidyData/tidyData.txt", row.names = F)

# From the tidyData, creates a second, independent tidy data set with the avg of each
# variable for each activity and each subject
avg.df <- aggregate(x = mydata, by= list(activities= mydata$activity, subj= mydata$subject),
                    FUN = mean)
avg.df <- avg.df[,!(colnames(avg.df) %in% c("subj", "activity"))]

write.table(avg.df, "./tidyData/avgData.txt", row.names = F)













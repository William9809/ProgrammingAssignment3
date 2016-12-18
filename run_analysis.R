run_analysis <- function() {

#   load packages
    
    library(dplyr)
    library(stringr)

#   read and tidy descriptive information
    
    activity_labels <- read.table("activity_labels.txt",header=FALSE,stringsAsFactors=FALSE,col.names=c("activity_no","activity_name"))
    features <- read.table("features.txt",header=FALSE,stringsAsFactors=FALSE,col.names=c("var_no","var_name"))

    features$var_name <- tolower(features$var_name)
    features$var_name <- sub("[(][)]","",features$var_name)
    features$var_name <- sub("[-]","_",features$var_name)
    features$var_name <- sub("[-]","_",features$var_name)
    features$var_name <- sub("acc","_acc",features$var_name)
    features$var_name <- sub("jerk","_jerk",features$var_name)
    features$var_name <- sub("gyro","_gyro",features$var_name)
    features$var_name <- sub("mag","_mag",features$var_name)
    features$var_name <- sub("fbodybody","fbody_body",features$var_name)
    features$var_name <- sub("meanfreq","mean_freq",features$var_name)

    features$var_name <- sub("std","sd",features$var_name)

    
# read data
    
    train_activities <- read.table("./train/Y_train.txt",header = FALSE, stringsAsFactors = FALSE,col.names="activity")
    test_activities <- read.table("./test/Y_test.txt",header = FALSE, stringsAsFactors = FALSE,col.names="activity")
    
    train_subjects <- read.table("./train/Subject_train.txt",header = FALSE,stringsAsFactors = FALSE, col.names = "subject")
    test_subjects <- read.table("./test/Subject_test.txt",header = FALSE,stringsAsFactors = FALSE, col.names = "subject")
    
    train_measurements <- read.table("./train/X_train.txt",header=FALSE,stringsAsFactors = FALSE,col.names = features$var_name)
    test_measurements <- read.table("./test/X_test.txt",header=FALSE,stringsAsFactors = FALSE,col.names = features$var_name)
   
# tidy, combine and select data

    train_activities <- mutate(train_activities,activity = activity_labels$activity_name[activity])
    test_activities <- mutate(test_activities,activity = activity_labels$activity_name[activity])
    
    observations <<- rbind(cbind(train_activities,train_subjects,train_measurements),cbind(test_activities,test_subjects,test_measurements))
    
    observations <<- select(observations,activity,subject,contains("_mean"),contains("_sd"))
    
# calculate grouped means, retidy names of grouping coluns    

    grouped_means <- aggregate(observations[,3:81],list(observations$activity,observations$subject),mean)
    names(grouped_means)[1:2] <- c("activity","subject")
    
# output grouped means to global environemnt and write to the "grouped_means.txt" file
    
    grouped_means <<- grouped_means
    write.table(grouped_means,"grouped_means.txt",row.names = FALSE)

}
#You should create one R script called run_analysis.R that does the following.
#read
setwd("/Users/oldmac/Desktop")
variables<-read.table("UCI HAR Dataset/features.txt")
x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
#combine
train<-cbind(subject_train,y_train,x_train)
test<-cbind(subject_test,y_test,x_test)
var<-as.character(variables$V2)
#label
names<-c("subject","activity",var)
complete<-rbind(test,train)
names(complete)<-names
#Appropriately labels the data set with descriptive variable names.
names(complete)<-gsub("^t", "time", names(complete))
names(complete)<-gsub("^f", "freq", names(complete))
names(complete)<-gsub("BodyBody", "body", names(complete))

#Uses descriptive activity names to name the activities in the data set
complete$activity<-recode(complete$activity,
     '1'="walking",'2'="walking upstairs",'3'="walking downstairs",'4'="sitting",'5'="standing",'6'="laying")

#Extracts only the measurements on the mean and standard deviation for each measurement.
complete2<-complete[grepl("subject|activity|mean|std",names(complete))]

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
melt<-melt(complete2, id.vars=c("subject","activity"), variable.name="feature")
means<-as.data.frame(
        ddply(melt, c("subject", "activity", "feature"), summarise,
              average = mean(value)))

#Save as text file
write.table(means, file="/Users/oldmac/Desktop/UCI HAR Dataset/tidydata", row.name=FALSE)



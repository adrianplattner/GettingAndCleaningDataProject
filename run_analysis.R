
train.X <- read.table('UCI HAR Dataset/train/X_train.txt')


test.X <- read.table('UCI HAR Dataset/test/X_test.txt')


merged <- rbind(train.X,test.X)

features <- read.table('UCI HAR Dataset/features.txt')
indices <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])


merged <- merged[,indices]
str(merged)
names(merged) <- features[indices,2]
names(merged) <- gsub("\\(|\\)", "", names(merged))
names(merged) <- tolower(names(merged))
names(merged)


train.subject <- read.table('UCI HAR Dataset/train/subject_train.txt')
test.subject <- read.table('UCI HAR Dataset/test/subject_test.txt')
merged.subject <- rbind(train.subject,test.subject)
colnames(merged.subject) <- "subject"
merged <- cbind(merged,merged.subject)


train.y <- read.table('UCI HAR Dataset/train/y_train.txt')
test.y <- read.table('UCI HAR Dataset/test/y_test.txt')

merged.y <- rbind(train.y,test.y)
activities <- read.table('UCI HAR Dataset/activity_labels.txt') 
str(activities)
merged$activity <- factor(merged.y$V1,levels= activities$V1,labels=activities$V2)

str(merged)

library(reshape2)


melted <- melt(merged, measure.vars = names(merged[,1:66]))
tidy <- dcast(melted,subject + activity ~ variable, mean)



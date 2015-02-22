cols <- readLines('C:/Users/win7/Desktop/UCI HAR Dataset/features.txt')

subj_test <- readLines('C:/Users/win7/Desktop/UCI HAR Dataset/test/subject_test.txt')
data_test <- read.table('C:/Users/win7/Desktop/UCI HAR Dataset/test/x_test.txt', col.names = cols, colClasses = "numeric")
subtest<- cbind(data_test[, 1:6], data_test[, 41:46], data_test[, 81:86], data_test[, 121:126], 
	data_test[, 161:166], data_test[, 201:202], data_test[, 214:215], data_test[, 227:228], data_test[, 240:241], data_test[, 253:254],
	data_test[, 266:271], data_test[, 345:350], data_test[, 424:429], data_test[, 503:504], data_test[, 516:517], data_test[, 529:530],
	data_test[, 542:543]) 
header_test <- readLines('C:/Users/win7/Desktop/UCI HAR Dataset/test/y_test.txt')

all_test <- cbind(subj_test, header_test, subtest)
merge_test <- rename(all_test, c("subj_test" = "Subject", "header_test" = "Activity"))

subj_train <- readLines('C:/Users/win7/Desktop/UCI HAR Dataset/train/subject_train.txt')
data_train <- read.table('C:/Users/win7/Desktop/UCI HAR Dataset/train/x_train.txt', col.names = cols, colClasses = "numeric")
subtrain<- cbind(data_train[, 1:6], data_train[, 41:46], data_train[, 81:86], data_train[, 121:126], 
	data_train[, 161:166], data_train[, 201:202], data_train[, 214:215], data_train[, 227:228], data_train[, 240:241], data_train[, 253:254],
	data_train[, 266:271], data_train[, 345:350], data_train[, 424:429], data_train[, 503:504], data_train[, 516:517], data_train[, 529:530],
	data_train[, 542:543]) 
header_train <- readLines('C:/Users/win7/Desktop/UCI HAR Dataset/train/y_train.txt')
all_train <- cbind(subj_train, header_train, subtrain)
merge_train <- rename(all_train, c("subj_train" = "Subject", "header_train" = "Activity"))

merge <- names(merge_train)

merged2 <- join(merge_test, merge_train, by = merge, type = "full") 
Activity_Label <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
levels(merged2[, 2]) <- Activity_Label

tapply(merged2[,3:5], list(merged2[,1], merged2[,2]), mean)

try2 <- aggregate(merged2[, 3:68], list(merged2[,2], merged2[,1]), mean)

merged3 <- cbind(try2[,2], try2[,1], try2[3:68])
merged4 <- rename(merged3, c("try2[, 2]" = "Subject", "try2[, 1]" = "Activity"))

write.table(merged4, "C:/Users/win7/Desktop/MBFCleanDataProject.txt", row.name = FALSE)

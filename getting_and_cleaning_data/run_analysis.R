


######### train: Getting all the train data sets into one data set.
features = read.table("features.txt")
X_train = read.table("./train/X_train.txt")
names(X_train) = features$V2
y_train = read.table("./train/Y_train.txt")
names(y_train) = "label"
subjects = read.table("./train/subject_train.txt")
names(subjects) = "subjects"
base_completa_train = cbind(X_train,y_train,subjects)

#files = list.files(path = "./train/Inertial Signals",pattern = "*.txt")
#setwd("./train/Inertial Signals")
#files_read = lapply(filelist, function(x)read.table(x, header=F, col.names = paste0(x,1:128))) 
#base  = do.call("cbind", files_read) 


######### test : Getting all test data sets into one data set.
features = read.table("features.txt")
X_test = read.table("./test/X_test.txt")
names(X_test) = features$V2
y_test = read.table("./test/Y_test.txt")
names(y_test) = "label"
subjects = read.table("./test/subject_test.txt")
names(subjects) = "subjects"
base_completa_test = cbind(X_test,y_test,subjects)


##### Total: Getting train and test data sets into one data set.
activity_labels  = read.table("activity_labels.txt")
base_completa = rbind(base_completa_train, base_completa_test)


base_names = names(base_completa)
names_selected = grep("mean|std", base_names , value = TRUE)
new_data_set = base_completa[, c(names_selected, "label", "subjects")]
names_selected = names(new_data_set)
names_selected = gsub(names_selected, pattern = '-', replacement = "_")
names_selected = gsub(names_selected, pattern = '\\()', replacement = "")
names(new_data_set) = names_selected
names_data_set = names(new_data_set)
new_data_set= merge(new_data_set,activity_labels, by.x = 'label', by.y = 'V1')
names(new_data_set) = c(names_data_set, 'activity_labels')


##### summarizing the mean and std measurements with its average.

library(dplyr)

new_data_set$subjects = as.factor(new_data_set$subjects)
new_data_set = tbl_df(new_data_set)
new_data_set_grouped =group_by(new_data_set,subjects,activity_labels)
avg = summarize_each(new_data_set_grouped, funs(mean))
avg = select(avg, -label)
names(avg)= paste0(names(avg),"_avg")
names(avg$subjects_avg) = 'subjects'
names(avg$activity_labels_avg) = 'activity_labels'

write.table(names(avg), file = 'avg_features.txt', row.names = TRUE) 
write.table(avg, row.names = FALSE, file= 'tdiy.txt')


==================================================================
Coursera Data Science Specialization Getting and Cleaning Data Course Project
==================================================================
Carlos Velásquez
==================================================================

# Transformations and features:

Each feature related to the mean and std of each measuremente from  Human Activity Recognition Using Smartphones Dataset Version 1.0 were averaged. The features are the following:


1 subjects
,2 activity_labels
,3 tBodyAcc_mean_X_avg
,4 tBodyAcc_mean_Y_avg
,5 tBodyAcc_mean_Z_avg
,6 tBodyAcc_std_X_avg
,7 tBodyAcc_std_Y_avg
,8 tBodyAcc_std_Z_avg
,9 tGravityAcc_mean_X_avg
,10 tGravityAcc_mean_Y_avg
,11 tGravityAcc_mean_Z_avg
,12 tGravityAcc_std_X_avg
,13 tGravityAcc_std_Y_avg
,14 tGravityAcc_std_Z_avg
,15 tBodyAccJerk_mean_X_avg
,16 tBodyAccJerk_mean_Y_avg
,17 tBodyAccJerk_mean_Z_avg
,18 tBodyAccJerk_std_X_avg
,19 tBodyAccJerk_std_Y_avg
,20 tBodyAccJerk_std_Z_avg
,21 tBodyGyro_mean_X_avg
,22 tBodyGyro_mean_Y_avg
,23 tBodyGyro_mean_Z_avg
,24 tBodyGyro_std_X_avg
,25 tBodyGyro_std_Y_avg
,26 tBodyGyro_std_Z_avg
,27 tBodyGyroJerk_mean_X_avg
,28 tBodyGyroJerk_mean_Y_avg
,29 tBodyGyroJerk_mean_Z_avg
,30 tBodyGyroJerk_std_X_avg
,31 tBodyGyroJerk_std_Y_avg
,32 tBodyGyroJerk_std_Z_avg
,33 tBodyAccMag_mean_avg
,34 tBodyAccMag_std_avg
,35 tGravityAccMag_mean_avg
,36 tGravityAccMag_std_avg
,37 tBodyAccJerkMag_mean_avg
,38 tBodyAccJerkMag_std_avg
,39 tBodyGyroMag_mean_avg
,40 tBodyGyroMag_std_avg
,41 tBodyGyroJerkMag_mean_avg
,42 tBodyGyroJerkMag_std_avg
,43 fBodyAcc_mean_X_avg
,44 fBodyAcc_mean_Y_avg
,45 fBodyAcc_mean_Z_avg
,46 fBodyAcc_std_X_avg
,47 fBodyAcc_std_Y_avg
,48 fBodyAcc_std_Z_avg
,49 fBodyAcc_meanFreq_X_avg
,50 fBodyAcc_meanFreq_Y_avg
,51 fBodyAcc_meanFreq_Z_avg
,52 fBodyAccJerk_mean_X_avg
,53 fBodyAccJerk_mean_Y_avg
,54 fBodyAccJerk_mean_Z_avg
,55 fBodyAccJerk_std_X_avg
,56 fBodyAccJerk_std_Y_avg
,57 fBodyAccJerk_std_Z_avg
,58 fBodyAccJerk_meanFreq_X_avg
,59 fBodyAccJerk_meanFreq_Y_avg
,60 fBodyAccJerk_meanFreq_Z_avg
,61 fBodyGyro_mean_X_avg
,62 fBodyGyro_mean_Y_avg
,63 fBodyGyro_mean_Z_avg
,64 fBodyGyro_std_X_avg
,65 fBodyGyro_std_Y_avg
,66 fBodyGyro_std_Z_avg
,67 fBodyGyro_meanFreq_X_avg
,68 fBodyGyro_meanFreq_Y_avg
,69 fBodyGyro_meanFreq_Z_avg
,70 fBodyAccMag_mean_avg
,71 fBodyAccMag_std_avg
,72 fBodyAccMag_meanFreq_avg
,73 fBodyBodyAccJerkMag_mean_avg
,74 fBodyBodyAccJerkMag_std_avg
,75 fBodyBodyAccJerkMag_meanFreq_avg
,76 fBodyBodyGyroMag_mean_avg
,77 fBodyBodyGyroMag_std_avg
,78 fBodyBodyGyroMag_meanFreq_avg
,79 fBodyBodyGyroJerkMag_mean_avg
,80 fBodyBodyGyroJerkMag_std_avg
,81 fBodyBodyGyroJerkMag_meanFreq_avg
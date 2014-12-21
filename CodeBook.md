---
title: "CodeBook"
author: "DraganP"
date: "Sunday, December 21, 2014"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The following are provided for each record:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Corresponding activity label. 
- An identifier of the subject who carried out the experiment.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

Mean Values and Standard Deviations of these signals were then calculated. For the purpose of this exercise, only Mean Values and Standard Deviations from the original data set were kept, and all other calculated values were discarded.

There are 66 Mean Value and Standard Deviation variables in the data set. In the final tidy data set, averages were calculated for each of the 66 variables across all readings, grouped separately for each subject and each activity. In other words, for subject 1 for walking average values for all 66 variables were calculated, for subject 2 for standing average values for all 66 variables were calculated, and so forth for all subjects, all activities, and all variables.

Note: jerk is a time derivative of acceleration, just like acceleration is a time derivative of speed. In other words, jerk represents change in acceleration over time.

The following is the description of all 66 variables in the final tidy data set, per the instructions in "Kirsten's codebook examples" discussion forum on the "Getting and Cleaning Data" course page (https://class.coursera.org/getdata-016/forum/thread?thread_id=76):

1. "tBodyAcc-mean()-X": average of the mean values of the body acceleration in the X direction.
2. "tBodyAcc-mean()-Y": average of the mean values of the body acceleration in the Y direction.
3. "tBodyAcc-mean()-Z": average of the mean values of the body acceleration in the Z direction.
4. "tBodyAcc-std()-X": average of the standard deviations of the body acceleration in the X direction.          
5. "tBodyAcc-std()-Y": average of the standard deviations of the body acceleration in the Y direction.
6. "tBodyAcc-std()-Z": average of the standard deviations of the body acceleration in the Z direction.
7. "tGravityAcc-mean()-X": average of the mean values of the gravity acceleration in the X direction.
8. "tGravityAcc-mean()-Y": average of the mean values of the gravity acceleration in the Y direction.      
9. "tGravityAcc-mean()-Z": average of the mean values of the gravity acceleration in the Z direction.
10. "tGravityAcc-std()-X": average of the standard deviations of the gravity acceleration in the X direction.
11. "tGravityAcc-std()-Y": average of the standard deviations of the gravity acceleration in the Y direction.
12. "tGravityAcc-std()-Z": average of the standard deviations of the gravity acceleration in the Z direction.     
13. "tBodyAccJerk-mean()-X": average of the mean values of the body linear jerk in the X direction.
14. "tBodyAccJerk-mean()-Y": average of the mean values of the body linear jerk in the Y direction.
15. "tBodyAccJerk-mean()-Z": average of the mean values of the body linear jerk in the Z direction.
16. "tBodyAccJerk-std()-X": average of the standard deviations of the body linear jerk in the X direction.    
17. "tBodyAccJerk-std()-Y": average of the standard deviations of the body linear jerk in the Y direction.
18. "tBodyAccJerk-std()-Z": average of the standard deviations of the body linear jerk in the Z direction.
19. "tBodyGyro-mean()-X": average of the mean values of the body angular velocity in the X direction.
20: "tBodyGyro-mean()-Y": average of the mean values of the body angular velocity in the Y direction.       
21: "tBodyGyro-mean()-Z": average of the mean values of the body angular velocity in the Z direction.
22: "tBodyGyro-std()-X": average of the standard deviations of the body angular velocity in the X direction.
23: "tBodyGyro-std()-Y": average of the standard deviations of the body angular velocity in the Y direction.
24: "tBodyGyro-std()-Z": average of the standard deviations of the body angular velocity in the Z direction.
25: "tBodyGyroJerk-mean()-X": average of the mean values of the body angular jerk in the X direction.
26: "tBodyGyroJerk-mean()-Y": average of the mean values of the body angular jerk in the Y direction.
27: "tBodyGyroJerk-mean()-Z": average of the mean values of the body angular jerk in the Z direction.
28: "tBodyGyroJerk-std()-X": average of the standard deviations of the body angular jerk in the X direction.    
29: "tBodyGyroJerk-std()-Y": average of the standard deviations of the body angular jerk in the Y direction.
30: "tBodyGyroJerk-std()-Z": average of the standard deviations of the body angular jerk in the Z direction.
31: "tBodyAccMag-mean()": average of the mean values of the magnitude of body acceleration.
32: "tBodyAccMag-std()": average of the standard deviations of the magnitude of body acceleration.
33: "tGravityAccMag-mean()": average of the mean values of the magnitude of gravity acceleration.
34: "tGravityAccMag-std()": average of the standard deviations of the magnitude of gravity acceleration.
35: "tBodyAccJerkMag-mean()": average of the mean values of the magnitude of body linear jerk.
36: "tBodyAccJerkMag-std()": average of the standard deviations of the magnitude of body linear jerk.
37: "tBodyGyroMag-mean()": average of the mean values of the magnitude of body angular veocity.
38: "tBodyGyroMag-std()": average of the standard deviations of the magnitude of body angular veocity.
39: "tBodyGyroJerkMag-mean()": average of the mean values of the magnitude of body angular jerk.
40: "tBodyGyroJerkMag-std()": average of the standard deviations of the magnitude of body angular jerk.
41: "fBodyAcc-mean()-X": average of the mean values of the FFT of body acceleration in the X direction.
42: "fBodyAcc-mean()-Y": average of the mean values of the FFT of body acceleration in the Y direction.
43: "fBodyAcc-mean()-Z": average of the mean values of the FFT of body acceleration in the Z direction.
44: "fBodyAcc-std()-X": average of the standard deviations of the FFT of body acceleration in the X direction.
45: "fBodyAcc-std()-Y": average of the standard deviations of the FFT of body acceleration in the Y direction.
46: "fBodyAcc-std()-Z": average of the standard deviations of the FFT of body acceleration in the Z direction.
47: "fBodyAccJerk-mean()-X": average of the mean values of the FFT of body linear jerk in the X direction.
48: "fBodyAccJerk-mean()-Y": average of the mean values of the FFT of body linear jerk in the Y direction.
49: "fBodyAccJerk-mean()-Z": average of the mean values of the FFT of body linear jerk in the Z direction.
50: "fBodyAccJerk-std()-X": average of the standard deviations of the FFT of body linear jerk in the X direction.
51: "fBodyAccJerk-std()-Y": average of the standard deviations of the FFT of body linear jerk in the Y direction.
52: "fBodyAccJerk-std()-Z": average of the standard deviations of the FFT of body linear jerk in the Z direction.
53: "fBodyGyro-mean()-X": average of the mean values of the FFT of body angular velocity in the X direction.
54: "fBodyGyro-mean()-Y": average of the mean values of the FFT of body angular velocity in the Y direction.
55: "fBodyGyro-mean()-Z": average of the mean values of the FFT of body angular velocity in the Z direction.
56: "fBodyGyro-std()-X": average of the standard deviations of the FFT of body angular velocity in the X direction.
57: "fBodyGyro-std()-Y": average of the standard deviations of the FFT of body angular velocity in the Y direction.
58: "fBodyGyro-std()-Z": average of the standard deviations of the FFT of body angular velocity in the Z direction.
59: "fBodyAccMag-mean()": average of the mean values of the FFT of the magnitude of body acceleration.
60: "fBodyAccMag-std()": average of the standard deviations of the FFT of the magnitude of body acceleration.
61: "fBodyBodyAccJerkMag-mean()": average of the mean values of the FFT of the magnitude of body linear jerk.
62: "fBodyBodyAccJerkMag-std()": average of the standard deviations of the FFT of the magnitude of body linear jerk.
63: "fBodyBodyGyroMag-mean()": average of the mean values of the FFT of the magnitude of body angular veocity.
64: "fBodyBodyGyroMag-std()": average of the standard deviations of the FFT of the magnitude of body angular veocity.
65: "fBodyBodyGyroJerkMag-mean()": average of the mean values of the FFT of the magnitude of body angular jerk.
66: "fBodyBodyGyroJerkMag-std()": average of the standard deviations of the FFT of the magnitude of body angular jerk.

Sources:
README.txt file, downloaded from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
features_info.txt file, downloaded from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Getting and Cleaning Data: Course Project

This repository contains my files for the "Getting and Cleaning Data" course project. "Getting and Cleaning Data" course is part of the Data Science specialization.

All the input files were downloaded from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

I have kept the existing folder and file structure from the source and just put everything (contained in the UCI HAR Dataset folder) in a folder in my working directory.

The files included in the GitHub repository are:
a. run_analysis.r: the script that accomplishes steps 1-5 and creates the tidy data file
b. README.txt (this file)
c. CodeBook.md (code book markdown file, explaining the source data, the transformations, and the final variables in the tidy data file)
d. DataAverages.txt (the final tidy data file as an output of step 5)

The following steps are performed by the run_analysis.r file:
1. Step 1: merges the training and the test sets to create one data set. First it loads all the relevant files from the source into matrices and vectors, and then it merges X test with X train, y test with y train, and subject test with subject train.
2. Step 2: extracts only the measurements on the mean and standard deviation for each measurement, by first identifying variable names that contain mean() or std() in their names in the features.txt file, and then extracting only the matching columns from the merged X dataset.
3. Step 3: uses descriptive activity names to name the activities in the data set, by replacing numbered activities in the merged y dataset with the activity names from the activity_labels.txt file. It also renames column names of the merged y dataset and the merged subject dataset with proper names.
4. Step 4: appropriately labels the data set with descriptive variable names, by replacing numbered variables in the extracted X dataset (from the Step 2) with the actual variable names from the features.txt file. This step also merges all the data (X, y, subject) into a single dataset, since it was much easier to rename activities (in the y dataset) and variables (in the X dataset) when those were still separate vectors or matrices, rather than doing it when they are all merged together into a single big X-y-subject matrix. The end result of step 4 is the same either way.
5. Step 5: from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. There are 66 Mean Value and Standard Deviation variables in the data set. Averages were calculated for each of the 66 variables across all readings, grouped separately for each subject and each activity. In other words, for subject 1 for walking average values for all 66 variables were calculated, for subject 2 for standing average values for all 66 variables were calculated, and so forth for all subjects, all activities, and all variables. The end result is saved in the DataAverages.txt file.


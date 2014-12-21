> library(plyr)
> setwd("C:/Users/.../Documents/Coursera/DataScience/GettingAndCleaningData/UCI HAR Dataset")

# Step 1
# Merge the training and the test sets to create one data set

> setwd("./train")
> Xtrain <- read.table("X_train.txt")
> ytrain <- read.table("y_train.txt")
> subjecttrain <- read.table("subject_train.txt")

# We can use the following to check dimensions - just uncomment (remove #)
# > dim(Xtrain)
# > dim(ytrain)
# > dim(subjecttrain)

> setwd("../test")
> Xtest <- read.table("X_test.txt")
> ytest <- read.table("y_test.txt")
> subjecttest <- read.table("subject_test.txt")

# We can use the following to check dimensions - just uncomment (remove #)
# > dim(Xtest)
# > dim(ytest)
# > dim(subjecttest)

# Create X data set
> Xdata <- rbind(Xtrain, Xtest)

# Create y data set
> ydata <- rbind(ytrain, ytest)

# Create subject data set
> subjectdata <- rbind(subjecttrain, subjecttest)

# We can use the following to check dimensions again - just uncomment (remove #)
# > dim(Xdata)
# > dim(ydata)
# > dim(subjectdata)

# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement

> setwd("../")
> features <- read.table("features.txt")

# Extract only the columns with mean() or std() in the names
> MeanStdFeatures <- grep("-(mean|std)\\(\\)", features[,2])
> XdataMS <- Xdata[, MeanStdFeatures]

# Step 3
# Use descriptive activity names to name the activities in the data set

> activities <- read.table("activity_labels.txt")
> ydata[, 1] <- activities[ydata[, 1], 2]
> names(ydata) <- "Activity"
> names(subjectdata) <- "Subject"

# Step 4
# Appropriately label the data set with descriptive variable names
> names(XdataMS) <- features[MeanStdFeatures, 2]

# Merge all data into a single set
# This is technically part of Step 1, but it's much easier
# to extract columns and rename data before binding it all together
> AllData <- cbind(XdataMS, ydata, subjectdata)

# Step 5
# From the data set in step 4, create a second, independent tidy data set
# with the average of each variable for each activity and each subject

# Calculate means of the first 66 columns only, i.e. skip the Activities and the Subjects
# Group the means of measurements by Activity and Subject
> DataAverages <- ddply(AllData, .(Activity, Subject), function(x) colMeans(x[, 1:66]))
> write.table(DataAverages, "DataAverages.txt", row.name=FALSE)


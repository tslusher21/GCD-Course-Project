# GCD-Course-Project
Code for the Course Project for Getting &amp; Cleaning Data

The script in this repository works using data on the Samsung Galaxy S smartphone. The script starts by reading in the activity and feature labels, to be used for clear variable naming later.

Then, we read in each of the three data sets (Subject, features, activity) for the training and test groups and created a combined data set for each activity. Once we have a combined set for each activity, we append the rows together to create the full combined dataset.

There are several variables, which we are not interested in, that have duplicate names and cause an error in some commands so we clean those out next.

We then use the select commmand to extract only mean and std features, being careful to include "()" so we do not select other features that happen to contain the word "mean".

Next, we merge the activity labels data from earlier to get descriptive activity names, and drop the now extraneous label.

In order to have descriptive variable names, we use the gsub command to expand some of the abbreviations in the feature names. Finally, we use group_by and summarise each to get the mean of each variable by activity and subject.


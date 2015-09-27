# Getting & Cleaning Data Course Project Codebook
## Data Collection
  From the Course Project description:
  
    The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
    
  The full raw dataset can be found at the following link
  
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
##Data Transformation
  Once you have the data in your working directory, you can run the script run_analysis.R. This script will combine the various input files into one raw dataset and generate the tidy dataset described in the Course Project description. The specific methodology is described in the README.md of this repository. 

## Variables
The columns included in the output file are as follows:

  - subject - The id of the subject who performed the activity for each window sample. Its range is from 1 to 30.
  - activity - The name of the activity that each person performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

The following columns are averages by activity and subject of the original variables as described in features_info.txt. The names were modified from their original form as described in features_info.txt for readability. The method for renaming is described at the end of this document
  - timeBodyAccelerometer-mean()-X
  - timeBodyAccelerometer-mean()-Y
  - timeBodyAccelerometer-mean()-Z
  - timeGravityAccelerometer-mean()-X
  - timeGravityAccelerometer-mean()-Y
  - timeGravityAccelerometer-mean()-Z
  - timeBodyAccelerometerJerk-mean()-X
  - timeBodyAccelerometerJerk-mean()-Y
  - timeBodyAccelerometerJerk-mean()-Z
  - timeBodyGyroscope-mean()-X
  - timeBodyGyroscope-mean()-Y
  - timeBodyGyroscope-mean()-Z
  - timeBodyGyroscopeJerk-mean()-X
  - timeBodyGyroscopeJerk-mean()-Y
  - timeBodyGyroscopeJerk-mean()-Z
  - timeBodyAccelerometerMagnitude-mean()
  - timeGravityAccelerometerMagnitude-mean()
  - timeBodyAccelerometerJerkMagnitude-mean()
  - timeBodyGyroscopeMagnitude-mean()
  - timeBodyGyroscopeJerkMagnitude-mean()
  - frequencyBodyAccelerometer-mean()-X
  - frequencyBodyAccelerometer-mean()-Y
  - frequencyBodyAccelerometer-mean()-Z
  - frequencyBodyAccelerometerJerk-mean()-X
  - frequencyBodyAccelerometerJerk-mean()-Y
  - frequencyBodyAccelerometerJerk-mean()-Z
  - frequencyBodyGyroscope-mean()-X
  - frequencyBodyGyroscope-mean()-Y
  - frequencyBodyGyroscope-mean()-Z
  - frequencyBodyAccelerometerMagnitude-mean()
  - frequencyBodyAccelerometerJerkMagnitude-mean()
  - frequencyBodyGyroscopeMagnitude-mean()
  - frequencyBodyGyroscopeJerkMagnitude-mean()
  - timeBodyAccelerometer-std()-X
  - timeBodyAccelerometer-std()-Y
  - timeBodyAccelerometer-std()-Z
  - timeGravityAccelerometer-std()-X
  - timeGravityAccelerometer-std()-Y
  - timeGravityAccelerometer-std()-Z
  - timeBodyAccelerometerJerk-std()-X
  - timeBodyAccelerometerJerk-std()-Y
  - timeBodyAccelerometerJerk-std()-Z
  - timeBodyGyroscope-std()-X
  - timeBodyGyroscope-std()-Y
  - timeBodyGyroscope-std()-Z
  - timeBodyGyroscopeJerk-std()-X
  - timeBodyGyroscopeJerk-std()-Y
  - timeBodyGyroscopeJerk-std()-Z
  - timeBodyAccelerometerMagnitude-std()
  - timeGravityAccelerometerMagnitude-std()
  - timeBodyAccelerometerJerkMagnitude-std()
  - timeBodyGyroscopeMagnitude-std()
  - timeBodyGyroscopeJerkMagnitude-std()
  - frequencyBodyAccelerometer-std()-X
  - frequencyBodyAccelerometer-std()-Y
  - frequencyBodyAccelerometer-std()-Z
  - frequencyBodyAccelerometerJerk-std()-X
  - frequencyBodyAccelerometerJerk-std()-Y
  - frequencyBodyAccelerometerJerk-std()-Z
  - frequencyBodyGyroscope-std()-X
  - frequencyBodyGyroscope-std()-Y
  - frequencyBodyGyroscope-std()-Z
  - frequencyBodyAccelerometerMagnitude-std()
  - frequencyBodyAccelerometerJerkMagnitude-std()
  - frequencyBodyGyroscopeMagnitude-std()
  - frequencyBodyGyroscopeJerkMagnitude-std()

The names of the variables were modified slightly for clarity. They were modified as follows:
  - "t" prefix was replaced with "time"
  - "f" prefix was replaced with "frequency"
  - "Acc" replaced with "Accelerometer"
  - "Gyro" replaced with "Gyroscope"
  - "Mag" replaced with "Magnitude"
  - "BodyBody" replaced with "Body"


Information on the methodology for computing the data can be found in the `README.md` in this repository.

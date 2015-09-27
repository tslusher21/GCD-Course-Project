# Getting & Cleaning Data course project Codebook

The columns included in the output file are as follows:

  - subject - The id of the subject who performed the activity for each window sample. Its range is from 1 to 30.
  - activity - The name of the activity that each person performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

The specific columns included are averages, by activity and subject, of the original variables as described in features_info.txt. This file contains the mean value only of features estimated from the mean value ("mean()") or standard deviation ("std()").

The names of the variables were modified slightly for clarity. They were modified as follows:
  - "t" prefix was replaced with "time"
  - "f" prefix was replaced with "frequency"
  - "Acc" replaced with "Accelerometer"
  - "Gyro" replaced with "Gyroscope"
  - "Mag" replaced with "Magnitude"
  - "BodyBody" replaced with "Body"

Information on the methodology for computing the data can be found in the `README.txt` in this repository.

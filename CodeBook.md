## Human Activity Recognition using smartphone - Codebook

Human activity data has been recorded on smartphones, and the raw datasets have been tidied and summarized.

This code book has the following sections:
- the authors  description of the source data
- the source data web locations 
- the selection and tidying process
- describes the output data


### Source data

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


### Source data web locations

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data which has been tidied and summarized:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


### Tidying and summarising process

An data frame 'observations' is output to the "R" global environment which has been prepared as follows:
- Training and test data sets have been combined
- The activity numbers, subject numbers and observations, which were in separate files, are combined
- Activity numbers are replaced with activity names
- The observation variable names are taken from the original files 'features.txt' but made more regular:
    - Lower case
    - Underscores between words
    - Unnecessary punctuation removed
- Only mean and standard deviation (_sd) observations are returned

As a separate step the mean of the data above is taken, grouped by activity and subject. This is returned as a data frame 'grouped_means' to the R global environment and written as a table to the "grouped_means.txt" file in the working directory.


### Output variables

Both the observations and grouped_means output have the following variables:

1 activity
2 subject
3 tbody_acc_mean_x
4 tbody_acc_mean_y
5 tbody_acc_mean_z
6 tgravity_acc_mean_x
7 tgravity_acc_mean_y
8 tgravity_acc_mean_z
9 tbody_acc_jerk_mean_x
10 tbody_acc_jerk_mean_y
11 tbody_acc_jerk_mean_z
12 tbody_gyro_mean_x
13 tbody_gyro_mean_y
14 tbody_gyro_mean_z
15 tbody_gyro_jerk_mean_x
16 tbody_gyro_jerk_mean_y
17 tbody_gyro_jerk_mean_z
18 tbody_acc_mag_mean
19 tgravity_acc_mag_mean
20 tbody_acc_jerk_mag_mean
21 tbody_gyro_mag_mean
22 tbody_gyro_jerk_mag_mean
23 fbody_acc_mean_x
24 fbody_acc_mean_y
25 fbody_acc_mean_z
26 fbody_acc_mean_freq_x
27 fbody_acc_mean_freq_y
28 fbody_acc_mean_freq_z
29 fbody_acc_jerk_mean_x
30 fbody_acc_jerk_mean_y
31 fbody_acc_jerk_mean_z
32 fbody_acc_jerk_mean_freq_x
33 fbody_acc_jerk_mean_freq_y
34 fbody_acc_jerk_mean_freq_z
35 fbody_gyro_mean_x
36 fbody_gyro_mean_y
37 fbody_gyro_mean_z
38 fbody_gyro_mean_freq_x
39 fbody_gyro_mean_freq_y
40 fbody_gyro_mean_freq_z
41 fbody_acc_mag_mean
42 fbody_acc_mag_mean_freq
43 fbody_body_acc_jerk_mag_mean
44 fbody_body_acc_jerk_mag_mean_freq
45 fbody_body_gyro_mag_mean
46 fbody_body_gyro_mag_mean_freq
47 fbody_body_gyro_jerk_mag_mean
48 fbody_body_gyro_jerk_mag_mean_freq
49 tbody_acc_sd_x
50 tbody_acc_sd_y
51 tbody_acc_sd_z
52 tgravity_acc_sd_x
53 tgravity_acc_sd_y
54 tgravity_acc_sd_z
55 tbody_acc_jerk_sd_x
56 tbody_acc_jerk_sd_y
57 tbody_acc_jerk_sd_z
58 tbody_gyro_sd_x
59 tbody_gyro_sd_y
60 tbody_gyro_sd_z
61 tbody_gyro_jerk_sd_x
62 tbody_gyro_jerk_sd_y
63 tbody_gyro_jerk_sd_z
64 tbody_acc_mag_sd
65 tgravity_acc_mag_sd
66 tbody_acc_jerk_mag_sd
67 tbody_gyro_mag_sd
68 tbody_gyro_jerk_mag_sd
69 fbody_acc_sd_x
70 fbody_acc_sd_y
71 fbody_acc_sd_z
72 fbody_acc_jerk_sd_x
73 fbody_acc_jerk_sd_y
74 fbody_acc_jerk_sd_z
75 fbody_gyro_sd_x
76 fbody_gyro_sd_y
77 fbody_gyro_sd_z
78 fbody_acc_mag_sd
79 fbody_body_acc_jerk_mag_sd
80 fbody_body_gyro_mag_sd
81 fbody_body_gyro_jerk_mag_sd


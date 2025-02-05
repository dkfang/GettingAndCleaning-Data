# Codebook

# Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Attribute Information
For each record in the dataset it is provided: 
1. Triaxial acceleration from the accelerometer (total acceleration) and the            estimated body acceleration. 
2. Triaxial Angular velocity from the gyroscope. 
3. Its activity label. 

# Citation Request
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

# Variable Descriptions
| Variable names | Description |
| ---- | ---- |
| activities | The activity performed |
| subject | Subject ID |
| tbodyacc-mean-x | Mean time for acceleration of body for X direction |
| tbodyacc-mean-y | Mean time for acceleration of body for Y direction |
| tbodyacc-mean-z | Mean time for acceleration of body for Z direction |
| tbodyacc-std-x | Standard deviation of time for acceleration of body for X direction |
| tbodyacc-std-y | Standard deviation of time for acceleration of body for Y direction |
| tbodyacc-std-z | Standard deviation of time for acceleration of body for Z direction |
| tgravityacc-mean-x | Mean time of acceleration of gravity for X direction |
| tgravityacc-mean-y | Mean time of acceleration of gravity for Y direction |
| tgravityacc-mean-z | Mean time of acceleration of gravity for Z direction |
| more variables | and so on |





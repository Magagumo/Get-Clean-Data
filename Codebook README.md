# Get-Clean-Data
Repo for Get Clean Data for Coursera

#see R_analaysis for notations on how code creates tidy dataset from FIT UCI HAR dataset

#Codebook for 68 variables
## Std = Standard Deviation 
   mean = Mean
   Acc = Acceleration
   t = original signals
   f = FFT frequency signals

# From dataset notes: "Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were 
calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)." 

Variables 1-68, Variables 3-68 are the mean value of the given variables, stratified by Subject and Activity Type
1. "Subject": Subject ID (1-30) 
2. "Activity": Activity Levels ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
3.  "X1.tBodyAcc.mean...X": Body Acc, mean, X-axis; original signal 
4.  "X2.tBodyAcc.mean...Y": Body Acc, mean, Y-axis; original signal   
5. "X3.tBodyAcc.mean...Z": Body Acc, mean, Z-axis; original signal  
6. "X4.tBodyAcc.std...X": Body Acc, std, X-axis; original signal  
7. "X5.tBodyAcc.std...Y": Body Acc, std, Y-axis; original signal   
8. "X6.tBodyAcc.std...Z": Body Acc, std, z-axis; original signal   
9. "X41.tGravityAcc.mean...X": Gravity Acc, mean, X-axis; original signal  
10."X42.tGravityAcc.mean...Y": Gravity Acc, mean, Y-axis; original signal   
11. "X43.tGravityAcc.mean...Z": Gravity Acc, mean, Z-axis; original signal   
12. "X44.tGravityAcc.std...X": Gravity Acc, std, X-axis; original signal   
13. "X45.tGravityAcc.std...Y": Gravity Acc, std, Y-axis; original signal 
14. "X46.tGravityAcc.std...Z" : Gravity Acc, std, Z-axis; original signal  
15. "X81.tBodyAccJerk.mean...X": Body Jerk Acc, mean, X-axis; original signal  
16. "X82.tBodyAccJerk.mean...Y": Body Jerk Acc, mean, Y-axis; original signal    
17. "X83.tBodyAccJerk.mean...Z": Body Jerk Acc, mean, Z-axis; original signal    
18. "X84.tBodyAccJerk.std...X": Body Jerk Acc, std, X-axis; original signal   
19. "X85.tBodyAccJerk.std...Y": Body Jerk Acc, std, Y-axis; original signal 
20. "X86.tBodyAccJerk.std...Z": Body Jerk Acc, std, Z-axis; original signal 
21. "X121.tBodyGyro.mean...X": Body Gyro , mean, X-axis; original signal     
22. "X122.tBodyGyro.mean...Y": Body Gyro , mean, Y-axis; original signal   
23. "X123.tBodyGyro.mean...Z": Body Gyro , mean, Z-axis; original signal 
24. "X124.tBodyGyro.std...X": Body Gyro , std, X-axis; original signal   
25. "X125.tBodyGyro.std...Y": Body Gyro , std, Y-axis; original signal  
26. "X126.tBodyGyro.std...Z": Body Gyro , std, Z-axis; original signal  
27. "X161.tBodyGyroJerk.mean...X": Body Gyro Jerk, mean, X-axis; original signal 
28. "X162.tBodyGyroJerk.mean...Y": : Body Gyro Jerk, mean, Y-axis; original signal  
29. "X163.tBodyGyroJerk.mean...Z": Body Gyro Jerk, mean, Z-axis; original signal  
30. "X164.tBodyGyroJerk.std...X": Body Gyro Jerk, std, X-axis; original signal 
31. "X165.tBodyGyroJerk.std...Y": Body Gyro Jerk, std, Y-axis; original signal  
32. "X166.tBodyGyroJerk.std...Z": Body Gyro Jerk, std, Z-axis; original signal 
33. "X201.tBodyAccMag.mean..": Body Acc Mag, mean; original signal 
34. "X202.tBodyAccMag.std..": Body Acc Mag, std; original signal 
35. "X214.tGravityAccMag.mean..": Gravity Acc Mag, mean; original signal 
36. "X215.tGravityAccMag.std..": Gravity Acc Mag, std; original signal 
37. "X227.tBodyAccJerkMag.mean..": Body Acc Jerk, mean; original signal 
38. "X228.tBodyAccJerkMag.std..": Body Acc Jerk, std; original signal 
39. "X240.tBodyGyroMag.mean..": Body Gyro Mag, mean; original signal 
40. "X241.tBodyGyroMag.std..": Body Gyro Mag, std; original signal 
41. "X253.tBodyGyroJerkMag.mean..": Body Gyro Jerk Mag, mean; original signal 
42. "X254.tBodyGyroJerkMag.std..": Body Gyro Jerk Mag, std; original signal 
43. "X266.fBodyAcc.mean...X": Body Acc, mean, X-axis; FFT signal
44. "X267.fBodyAcc.mean...Y": Body Acc, mean, Y-axis; FFT signal
45. "X268.fBodyAcc.mean...Z": Body Acc, mean, Z-axis; FFT signal
46. "X269.fBodyAcc.std...X": Body Acc, std, X-axis; FFT signal
47. "X270.fBodyAcc.std...Y": Body Acc, std, Y-axis; FFT signal 
48. "X271.fBodyAcc.std...Z": Body Acc, std, Z-axis; FFT signal 
49. "X345.fBodyAccJerk.mean...X": Body Acc Jerk, mean, X-axis; FFT signal
50. "X346.fBodyAccJerk.mean...Y": Body Acc Jerk, mean, Y-axis; FFT signal
51. "X347.fBodyAccJerk.mean...Z": Body Acc Jerk, mean, Z-axis; FFT signal
52. "X348.fBodyAccJerk.std...X": Body Acc Jerk, std, X-axis; FFT signal
53. "X349.fBodyAccJerk.std...Y":  Body Acc Jerk, std, Y-axis; FFT signal
54. "X350.fBodyAccJerk.std...Z":  Body Acc Jerk, std, Z-axis; FFT signal
55. "X424.fBodyGyro.mean...X":  Body Gyro, mean, X-axis; FFT signal
56. "X425.fBodyGyro.mean...Y":  Body Gyro, mean, Y-axis; FFT signal 
57. "X426.fBodyGyro.mean...Z":  Body Gyro, mean, Z-axis; FFT signal 
58. "X427.fBodyGyro.std...X": Body Gyro, STD, X-axis; FFT signal 
59. "X428.fBodyGyro.std...Y": Body Gyro, STD, Y-axis; FFT signal 
60. "X429.fBodyGyro.std...Z": Body Gyro, STD, Z-axis; FFT signal
61. "X503.fBodyAccMag.mean..": Body Acc Mag, mean; FFT signal  
62. "X504.fBodyAccMag.std..": Body Acc Mag, STD; FFT signal   
63. "X516.fBodyBodyAccJerkMag.mean..": Body Body Acc Jerk Mag, mean; FFT signal  
64. "X517.fBodyBodyAccJerkMag.std..": Body Body Acc Jerk Mag, std; FFT signal
65. "X529.fBodyBodyGyroMag.mean..": Body Body Gyro Mag, mean; FFT signal
66. "X530.fBodyBodyGyroMag.std..": Body Body Gyro Mag, std; FFT signal 
67. "X542.fBodyBodyGyroJerkMag.mean..": Body Body Gyro Jerk Mag, mean; FFT signal 
68. "X543.fBodyBodyGyroJerkMag.std..": Body Body Gyro Jerk Mag, std; FFT signal 

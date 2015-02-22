# Get-Clean-Data
Repo for Get Clean Data for Coursera

#see below for R_analysis notations on how code creates tidy dataset from FIT UCI HAR dataset 

See codebook.txt on variable descriptions

#Set Wd to contain UCI HAR Dataset

#Creates data-frames from test data and headers

  #Only retain mean and std dev. variables, using index calls

#Creates combined test data.frame, creating shared merging variables

#Creates data-frames from train data and headers

  #Only retain mean and std dev. variables, using index calls

#Creates combined train data.frame, creating shared merging variables

#Merge test and train datasets on Subject & Activity

#Modify Activity Levels with descriptive labels

#Create mean calculations of all variables by Subject ID & Activity Level using aggregate function

#Reorders columns to put Subject & Activity Level first & fix labels

#Output tidy dataset


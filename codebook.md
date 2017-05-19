##GETTING AND CLEANING DATA PROJECT
##CODE BOOK
###Kea Duckenfield
###May 2017

Source data: Human Activity Recognition Using Smartphones Dataset, Version 1.0
=================================================================================================
This data set includes 68 variables for each measurement: the ID of the subject observed, the activity observed, and the mean and standard deviation for each of 33 measurements. Descriptions for each specific variable in order from left to right in the data set are given below, along with their format and range of possible values, where applicable. 

Please note: for quantitative measurements such as body acceleration, units were not given in the information supplied with the source data. However, the means and standard deviations will be in the same units as the measurements from which they were derived.
=================================================================================================

*"subjectid"   (integer) the ID of the subject observed, between 1 and 30     

*"activityid"  (character) the type of activity observed:

	walking = walking
	climbing = walking up stairs
	descending = walking down stairs
	sitting = sitting
	standing = standing
	lying = lying
*"tBodyAccmeanX" (double) mean linear acceleration of the subject's body in the X dimension

*"tBodyAccmeanY" (double) mean linear acceleration of the subject's body in the Y dimension

*"tBodyAccmeanZ" (double) mean linear acceleration of the subject's body in the Z dimension

*"tGravityAccmeanX" (double) mean linear gravity acceleration in the X dimension

*"tGravityAccmeanY" (double) mean linear gravity acceleration in the Y dimension

*"tGravityAccmeanZ" (double) mean linear gravity acceleration in the Z dimension

*"tBodyAccJerkmeanX" (double) mean rate of change of linear body acceleration (i.e., "jerk") in the X dimension 

*"tBodyAccJerkmeanY" (double) mean rate of change of linear body acceleration (i.e., "jerk") in the Y dimension

*"tBodyAccJerkmeanZ" (double) mean rate of change of linear body acceleration (i.e., "jerk") in the Z dimension 

*"tBodyGyromeanX" (double) mean angular velocity of the subject's body in the X dimension

*"tBodyGyromeanY" (double) mean angular velocity of the subject's body in the Y dimension          

*"tBodyGyromeanZ" (double) mean angular velocity of the subject's body in the Z dimension        

*"tBodyGyroJerkmeanX" (double) mean rate of change of angular velocity of the subject's body (i.e., "jerk") in the X dimension      

*"tBodyGyroJerkmeanY" (double) mean rate of change of angular velocity of the subject's body (i.e., "jerk") in the Y dimension     

*"tBodyGyroJerkmeanZ" (double) mean rate of change of angular velocity of the subject's body (i.e., "jerk") in the Z dimension            
*"tBodyAccMagmean" (double) mean magnitude of the three-dimensional acceleration of the subject's body  

*"tGravityAccMagmean" (double) mean magnitude of the three-dimensional gravity acceleration 

*"tBodyAccJerkMagmean" (double) mean magnitude of the rate of change of the three-dimensional acceleration of the subject's body 

*"tBodyGyroMagmean" (double) mean magnitude of the three-dimensional angular velocity of the subject's body

*"tBodyGyroJerkMagmean" (double) mean magnitude of the rate of change of the three-dimensional angular velocity of the subject's body

*"fBodyAccmeanX" (double) mean fast Fourier transform value of the linear acceleration of the subject's body in the X dimension

*"fBodyAccmeanY" (double) mean fast Fourier transform value of the linear acceleration of the subject's body in the Y dimension  

*"fBodyAccmeanZ" (double) mean fast Fourier transform value of the linear acceleration of the subject's body in the Z dimension  

*"fBodyAccJerkmeanX" (double) mean fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the X dimension

*"fBodyAccJerkmeanY" (double) mean fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Y dimension

*"fBodyAccJerkmeanZ" (double) mean fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Z dimension

*"fBodyGyromeanX" (double) mean fast Fourier transform value of the mean angular velocity of the subject's body in the X dimension

*"fBodyGyromeanY" (double) mean fast Fourier transform value of the mean angular velocity of the subject's body in the Y dimension

*"fBodyGyromeanZ" (double) mean fast Fourier transform value of the mean angular velocity of the subject's body in the Z dimension

*"fBodyAccMagmean" (double) mean fast Fourier transform value of the magnitude of the three-dimensional acceleration of the subject's body

*"fBodyBodyAccJerkMagmean" (double) mean fast Fourier transform value of the magnitude of the rate of change of the three-dimensional acceleration of the subject's body

*"fBodyBodyGyroMagmean" (double) mean fast Fourier transform value of the magnitude of the three-dimensional angular velocity of the subject's body   

*"fBodyBodyGyroJerkMagmean" (double) mean fast Fourier transform value of the magnitude of the rate of change of the three-dimensional angular velocity of the subject's body

*"tBodyAccstdX" (double) standard deviation of the linear acceleration of the subject's body in the X dimension

*"tBodyAccstdY" (double) standard deviation of the linear acceleration of the subject's body in the Y dimension     

*"tBodyAccstdZ" (double) standard deviation of the linear acceleration of the subject's body in the Z dimension       

*"tGravityAccstdX" (double) standard deviation of the linear gravity acceleration in the X dimension      

*"tGravityAccstdY" (double) standard deviation of the linear gravity acceleration in the Y dimension      

*"tGravityAccstdZ" (double) standard deviation of the linear gravity acceleration in the Z dimension      

*"tBodyAccJerkstdX" (double) standard deviation of the rate of change of linear body acceleration (i.e., "jerk") in the X dimension        
*"tBodyAccJerkstdY" (double) standard deviation of the rate of change of linear body acceleration (i.e., "jerk") in the Y dimension        
*"tBodyAccJerkstdZ" (double) standard deviation of the rate of change of linear body acceleration (i.e., "jerk") in the Z dimension      
*"tBodyGyrostdX" (double) standard deviation of the angular velocity of the subject's body in the X dimension      

*"tBodyGyrostdY" (double) standard deviation of the angular velocity of the subject's body in the Y dimension          

*"tBodyGyrostdZ" (double) standard deviation of the angular velocity of the subject's body in the Z dimension  

*"tBodyGyroJerkstdX" (double) standard deviation of the rate of change of angular velocity of the subject's body (i.e., "jerk") in the X dimension      

*"tBodyGyroJerkstdY" (double) standard deviation of the rate of change of angular velocity of the subject's body (i.e., "jerk") in the Y dimension      

*"tBodyGyroJerkstdZ" (double) standard deviation of the rate of change of angular velocity of the subject's body (i.e., "jerk") in the Z dimension       

*"tBodyAccMagstd" (double) standard deviation of the magnitude of the three-dimensional acceleration of the subject's body   

*"tGravityAccMagstd" (double) standard deviation of the magnitude of the three-dimensional gravity acceleration      

*"tBodyAccJerkMagstd" (double) standard deviation of the magnitude of the rate of change of the three-dimensional acceleration of the subject's body      

*"tBodyGyroMagstd" (double) standard deviation of the magnitude of the three-dimensional angular velocity of the subject's body   

*"tBodyGyroJerkMagstd" (double) standard deviation of the magnitude of the rate of change of the three-dimensional angular velocity of the subject's body     

*"fBodyAccstdX" (double) standard deviation of the fast Fourier transform value of the linear acceleration of the subject's body in the X dimension          

*"fBodyAccstdY" (double) standard deviation of the fast Fourier transform value of the linear acceleration of the subject's body in the Y dimension           

*"fBodyAccstdZ" (double) standard deviation of the fast Fourier transform value of the linear acceleration of the subject's body in the Z dimension            

*"fBodyAccJerkstdX" (double) standard deviation of the fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the X dimension        

*"fBodyAccJerkstdY" (double) standard deviation of the fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Y dimension       

*"fBodyAccJerkstdZ" (double) standard deviation of the fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Z dimension        

*"fBodyGyrostdX" (double) standard deviation of the fast Fourier transform value of the mean angular velocity of the subject's body in the X dimension           

*"fBodyGyrostdY" (double) standard deviation of the fast Fourier transform value of the mean angular velocity of the subject's body in the Y dimension           

*"fBodyGyrostdZ" (double) standard deviation of the fast Fourier transform value of the mean angular velocity of the subject's body in the Z dimension          

*"fBodyAccMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the three-dimensional acceleration of the subject's body          

*"fBodyBodyAccJerkMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the rate of change of the three-dimensional acceleration of the subject's body  

*"fBodyBodyGyroMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the three-dimensional angular velocity of the subject's body     

*"fBodyBodyGyroJerkMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the rate of change of the three-dimensional angular velocity of the subject's body

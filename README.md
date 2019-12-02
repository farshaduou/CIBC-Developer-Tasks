# CIBC-Developer-Tasks

# Required task 2  
This folder, requiredTask2, is where the circular array class is defined, using C++ in Microsoft visual studio. The "Source.cpp" is the driver of the class to test it. Unfortunately this class was not debugged on time and does not run correctly yet.

# Required task 3  
The directory of requiredTask3 is for the python script that compares two images. I used opencv to load images and then subtract the three channels of colors in them and display each separately.  Also a pytest was written and added but due to the vague nature of problem extensive testing was not scripted to be performed.



# Bonus task 1

To solve this task MATLAB 2016b is used. To run the solution simply open bonusTask1.m in bonusTask1 folder using MATLAB 2016b and later and run the code by pressing F5. 

Notes:  
1.Make sure the two functions, 'getInput.m' and 'sortProj.m' are in the same folder, the working directory.  
2.If the projects cannot be sorted to fulfil the dependecies, the script will generate the following message:  
 **** Sorting Error occured ****  
The projects are not sortable with the provided build requirements!

# Bonus task 2  
The affine transformation problem to overlap the two images seemes pretty straightforward and interesting to do but unfortunately I did not get a chance to work on it yet. For the two dimentional case, with the 3x3 transformation matrix, the matrix is comparable to the deformation gradient matrix for a hyperelasic body undergoing an arbitrary transformation. In continum mechanics these transformation are then split into deviatoric and isochoric parts that can be extracted from the transformation matrix.  
If I get a chance later today I will look at this problem.

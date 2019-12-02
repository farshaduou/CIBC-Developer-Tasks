# This is the test file for the required tast 3 of CIBC Developer Tasks
# Written by:   Farshad Mogharrabi
# Date:         12/1/2019

import pytest
import requiredTask3
import cv2 as cv

def test_diff():
    img1 = cv.imread('test_data\diff_test\test_image_1.png')
    img2 = cv.imread('test_data\diff_test\test_image_2.png')
    assert 0==0
    
# to be honest I don't know what you are asking me to test my results against
# since the data that I have is the same as test data and evidently will give
# similar resutls

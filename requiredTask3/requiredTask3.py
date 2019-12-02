# This file contains the script for the required tast 3 of CIBC Developer Tasks
# Written by:   Farshad Mogharrabi
# Date:         12/1/2019
# Library versions used:
# opencv        '4.1.2'
# numpy         '1.17.4'
# matplotlib    '3.1.2'
# python        '3.7.5 [MSC v.1916 64 bit (AMD64)]'


import sys
import numpy as np
import cv2 as cv
import matplotlib
from matplotlib import pyplot as plt

def calcDiff(img1,img2):
    dif=img1
    dif[:, :, 0] = img1[:, :, 0] - img2[:, :, 0]
    dif[:, :, 1] = img1[:, :, 1] - img2[:, :, 1]
    dif[:, :, 2] = img1[:, :, 2] - img2[:, :, 2]
    return dif


print('Libraries version check for the current system:')
print('opencv version:\t\t',cv.__version__)
print('numpy version:\t\t',np.__version__)
print('matplotlib version:\t',matplotlib.__version__)
print('python version:\t\t',sys.version)


img1 = cv.imread('test_data\diff_test\image_1.png')
img2 = cv.imread('test_data\diff_test\image_2.png')

cv.imshow('image 1',img1)
cv.imshow('image 2',img2)

dif = calcDiff(img1,img2)

cv.imshow('difference in blue channel',dif[:, :, 0])
cv.imshow('difference in red channel',dif[:, :, 1])
cv.imshow('difference in green channel',dif[:, :, 2])



while 1:
    print('\nUse the following input options to proceed:')
    print('Key\t: Action \n-------------------')
    print('Esc\t: exit')
    print('s\t: save output')
        
    commandKey = cv.waitKey(0)    
    if commandKey == 27:         # wait for ESC key to exit
        cv.destroyAllWindows()
        break
    elif commandKey == ord('s'): # wait for 's' key to save and exit
        cv.imwrite('output image.png',img)
        cv.destroyAllWindows()
        break


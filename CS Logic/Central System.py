# -*- coding: utf-8 -*-
"""
Created on Sat Apr 10 09:18:37 2021

@author: georg
"""

import downloadImage
import retrieveInfo

#Callable method to retrieve an image by Primary Key Insert where needed
#testImage = downloadImage.retrieveImage(17)

#Test Sequence to retrieve column data from database
testInfo = retrieveInfo.retrieveCol(13, 'user')

print(testInfo)
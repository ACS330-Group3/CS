# -*- coding: utf-8 -*-
"""
Created on Sat Apr 10 09:18:37 2021

@author: georg
"""

import downloadImage
import retrieveInfo



"""
Dummy Function List that needs doing:
    Priority:
        GENERAL LOGIC FRAME NEEDS TO BE ADDED HERE
        
        
        updateStatus     

        
        checkRFID
        checkStations
        sendToStation (may need extra):
            directOmni
            directDS
            directQC

    
    Extras:
        ceaseProduction
        checkErrors
    
    compeleted:
        retrieveInfo
        downloadImage(change to download 6 images)
    
"""

#Callable method to retrieve an image by Primary Key Insert where needed
testImage = downloadImage.retrieveImage(1)
#print(testImage)

#Test Sequence to retrieve column data from database
#testInfo = retrieveInfo.retrieveCol(13, 'status')
#print(testInfo)

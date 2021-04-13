# -*- coding: utf-8 -*-
"""
Created on Sat Apr 10 09:18:37 2021

@author: georg
"""

import downloadImage
import retrieveInfo
import updateStatus
import checkDB
#import checkRFID


"""
Dummy Function List that needs doing:
    Priority:
        GENERAL LOGIC FRAME NEEDS TO BE ADDED HERE
        
        checkRFID (Checks for new RFID pings to update the status)
        
        checkStations (Checks for inputs from stations research needed)
            checkOmni
            checkDS
            checkQC
        sendToStation (Functions to provide instruction):
            directOmni
            directDS
            directQC
    
    Extras:
        ceaseProduction
        checkErrors
    
    compeleted:
        retrieveInfo
        downloadImage(changed to download 6 images)
        updateStatus     
        checkDB (Checks for new arrivals based on status)
    
"""

#Error = False


#Callable method to retrieve any product ID needing pick up
#testDBCheck = checkDB.checkPickUp()
#print(testDBCheck)

#Callable method to retrieve an image by Primary Key Insert where needed
#testImage = downloadImage.retrieveImage(10)
#print(testImage)

#Test Sequence to retrieve column data from database
#testInfo = retrieveInfo.retrieveCol(5, 'user')
#print(testInfo)

#Test status Update
#testInfo = updateStatus.updateStatus(5,'Operate under pressure')
#print(testInfo)
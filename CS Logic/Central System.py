# -*- coding: utf-8 -*-
"""
Created on Sat Apr 10 09:18:37 2021

@author: georg
"""

import downloadImage
import retrieveInfo
import updateStatus
import checkDB
import time
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
    

Expected Sequence of Status for a succesful Run:
Waiting for Pick Up -> Transporting to DS -> Drawing Images -> Transporting to QC
-> Performing QC -> Passed QC Transport to Packaging

Possible functions that need to be made: 

Tasks that need to be done between 'Waiting for Pick up' and 'Trasnporting to DS':
    Assign Cube wth corresponding productID
    Inform Omniplatform that cube needs picking up
    Tell it to go to DS
    Update Database Status

Tasks that need to be done between 'Transporting to DS' and 'Drawing Images':
    recieve RFID ping from Cube corresponding to product ID from DS
    Download Images corresponding to Product ID
    Inform DS that the Cube needs Picking up and Drawing On.
    Update Database Status

Tasks that need to be done between 'Drawing Images' and 'Transporting to QC':
    recieve message from DS saying it's completed
    Have the Cube placed back on omni (may not be our job)
    Inform Omni that the cube has been placed and needs to be taken to QC
    Update Database Status
    
Tasks that need to be done between 'Transporting to QC' and 'Performing QC':
    recieve RFID ping from Cube corresponding to product ID from QC
    Have the OMNI place cube on QC
    Inform QC that cube has been placed pass original images 
    Update Database Status

Tasks that need to be done between 'Transporting to QC' and 'Performing QC':
    recieve message from QC saying it's completed and the match
    Inform Omni that it has the cube 
    Inform Omni to to packaging
    Update Database Status
    Complete
"""

#Error = False


#Callable method to retrieve any product ID needing pick up
try:
    while True:
        testDBCheck = checkDB.checkPickUp() #If no pick up return a False
        if testDBCheck == False:
            print('No Cube incoming request')
        else: 
            print(testDBCheck)
            #Callable method to retrieve an image by Primary Key Insert where needed
            testImage = downloadImage.retrieveImage(testDBCheck)
            print(testImage)
            
            
            #Test Sequence to retrieve column data from database
            testInfo = retrieveInfo.retrieveCol(testDBCheck, 'user')
            print(testInfo)
            
            
            #Test status Update
            testInfo = updateStatus.updateStatus(testDBCheck,'Cube Assigned RFID')
            print(testInfo)
            time.sleep(5)
except KeyboardInterrupt:
    pass
        
#!/usr/bin/env python

import rospy
import retrieveInfo
import updateStatus

from cs_msgs.srv import (Location,LocationResponse)

def handleLocation(req):
    dbAccessed = retrieveInfo.retrieveCol(req.ID, 'status')
    rospy.loginfo('Attempting to handleLocation, Recieved ID = {}, Accessed Status: {}'.format(req.ID,dbAccessed))
    
    if dbAccessed == 'Waiting for Pick Up':
        output = 1
        dummyHold = updateStatus.updateStatus(req.ID, 'At Drawing Station')
    elif dbAccessed == 'At Drawing Station':
        output = 2
        dummyHold = updateStatus.updateStatus(req.ID, 'At Quality Control')
    elif dbAccessed == 'At Quality Control':
        output = 3
        dummyHold = updateStatus.updateStatus(req.ID, 'Transporting to Packaging')
    else:
        output = 5
        dummyHold = 'Error'
    rospy.loginfo('Result {}'.format(dummyHold))
    return LocationResponse(output)

def main():
    rospy.init_node('CS_Node')
    loc = rospy.Service('Location', Location, handleLocation)
    print('Read to recieve Request')
    rospy.spin()

if __name__ == '__main__':
   main()

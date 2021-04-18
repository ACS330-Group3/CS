#!/usr/bin/env python

from VrepCustomBot import *
from cs_msgs.srv import *
import rospy

def getStationClient(ID):
    rospy.wait_for_service('Location')
    try:
        newLocation = rospy.ServiceProxy('Location', Location)
        response = newLocation(ID)
        print('The generated station is: {}'.format(response.station))
        return response.station
    except rospy.ServiceException as e:
        print('Service call failed: {}'.format(e))


if __name__ == "__main__":
    rospy.init_node('Omni_Node')
    productID = 11 #Change if we swap the default ID or do RFID Plan!

    bot = VrepBot()
    connected = bot.check_connected()

    print("Bot position:\n%s" % bot.po.update())
    bot.targetPO.update()
    print("Target position:\n%s" % bot.targetPO)
    tPrev = time.time()
    tDuty = 0.1

    gains = PidGains()
    gains.p = 10
    gains.i = 0.5
    gains.d = 0.5
    bot.xPid.set_gains(copy.copy(gains))
    bot.yPid.set_gains(copy.copy(gains))
    bot.xPid.iLim = 0.1
    bot.yPid.iLim = 0.1
    # Uncomment for separate angular gains
    # gains.p = 10
    # gains.i = 0.5
    # gains.d = 0.5
    bot.gammaPid.set_gains(copy.copy(gains))
    bot.gammaPid.iLim = np.pi / 4

    waypoint = copy.deepcopy(bot.pathTargetPO.update())
    waypoints = list()
    for x, y in zip((1, 1, -1, -1), (1, -1, -1, 1)):
        waypoint.x = x
        waypoint.y = y
        waypoints.append(copy.deepcopy(waypoint))
    print(waypoints)
    ''' #Commented out for testing reasons
    i = 0
    repeats = 0
    while repeats < 2:
        bot.path_goto(waypoints[i].x, waypoints[i].y, waypoints[i].gamma)
        i = (i + 1) % 4
        if i == 0:
            repeats = repeats + 1
    '''
    Loop = True
    try:
        while Loop:
            nextLocation = getStationClient(productID)
            if nextLocation == 1:
                print('Going to station DS!')
                bot.path_goto(waypoints[0].x, waypoints[0].y, waypoints[0].gamma)
            elif nextLocation == 2:
                print('Going to station QC!')
                bot.path_goto(waypoints[3].x, waypoints[3].y, waypoints[3].gamma)
            elif nextLocation == 3:
                print('Going to station 3!')
                bot.path_goto(waypoints[1].x, waypoints[1].y, waypoints[1].gamma)
            elif nextLocation == 5:
                print('Going to station 4!')
                bot.path_goto(waypoints[2].x, waypoints[2].y, waypoints[2].gamma)
            else:
                Loop = False

    except KeyboardInterrupt:
        print('Interrupt occurred!')


    bot.stop(True)  # force complete stop (blocking)
    rospy.spin()

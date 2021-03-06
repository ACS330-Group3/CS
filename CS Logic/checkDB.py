# -*- coding: utf-8 -*-
"""
Created on Mon Apr 12 08:20:01 2021

@author: georg
"""

#Imports necessary packages
import sshtunnel
import mysql.connector

def checkPickUp():
    try:
            with sshtunnel.SSHTunnelForwarder(
                ('ssh.pythonanywhere.com'),
                ssh_username='jgbroz', ssh_password='Sly!25321',
                remote_bind_address=('jgbroz.mysql.pythonanywhere-services.com', 3306)
            ) as tunnel:
                db = mysql.connector.connect(
                    user='jgbroz', password='Acs3302021',
                    host='127.0.0.1', port=tunnel.local_bind_port,
                    database='jgbroz$CentralSystem',
                )
                

                #Construct Query String
                queryString = "SELECT productID FROM productDetails WHERE status = 'Waiting for Pick Up'"
                
                
                #Begin Query Process
                mycursor = db.cursor()
                #select image Column from Database Table
                mycursor.execute(queryString)

                #Store the first result in a variable
                row = mycursor.fetchone()
                db.close()
                #returns a success if successful
    except mysql.connector.Error as err:
        print("Something went wrong: {}".format(err))
        return ('Fail')
    finally:
        if db:
            db.close()
            #returns a success if successful
            if row is None:
                return False
            return (row[0])
        if row is None:
            return False
        return (row[0])
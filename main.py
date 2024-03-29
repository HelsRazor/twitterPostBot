import tweepy
import datetime
import time
import mysql.connector
from mysql.connector import errorcode
from random import randint

#Twitter Kyes and secrets are retrieved from a text file
k_und_s = open("ks.txt","r")

CONSUMER_KEY= k_und_s.readline().strip()
CONSUMER_SECRET=k_und_s.readline().strip()
ACCESS_KEY=k_und_s.readline().strip()
ACCESS_SECRET=k_und_s.readline().strip()

k_und_s.close()

#setup variables for the api variable

auth = tweepy.OAuthHandler(CONSUMER_KEY,CONSUMER_SECRET)
auth.set_access_token(ACCESS_KEY,ACCESS_SECRET)
api = tweepy.API(auth)


def make_post():

    post_text = create_post()
    
    api.update_status(post_text)

    
def create_post():
    
#SQL CONNECTOR
    conn_info = open("connectionDetails.txt","r")
    try:
        sql_cnt = mysql.connector.connect(user=conn_info.readline().strip(), password=conn_info.readline().strip(),
                                          host=conn_info.readline().strip(), database=conn_info.readline().strip())
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Issue with username/password")
        elif err.errno==errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    conn_info.close();

    cursor = sql_cnt.cursor()

    tbl = randomTable() #chooses a table at random to select from

    #print(tbl)

    cursor.execute("SELECT quote FROM "+tbl)#Selects the quotes from the table

    results = cursor.fetchall()
    
    rc = len(results)-1#Gets the number of rows (rc == row count)

    #cursor.execute("SELECT quote FROM "+tbl)#Re aquires the quotes from the table

    #print(rc)

    x = randint(0,rc)#Psudo random number is generated between 1 and amount of rows

    #print(x)

    #results = cursor.fetchall()#creates a tuple of all quotes

    post = ''.join(results[x])#Stores the selected quote as a string

    #print(post)  

    cursor.close()
    sql_cnt.close()

    return post

#function to select a table randomly. Will need to update if new tables are added
def randomTable():
    sel = randint(1,3)
    switcher = {
            1: "happy",
            2: "whimsical",
            3: "theatrical"
        }
    return switcher.get(sel)

def time_check():#Checks to see if the time matches the targeted time if it does then we will post a tweet
    currentTimeTup = datetime.datetime.now()
    targetTime = currentTimeTup.replace(hour=12,minute=0,second=0)
    #print(currentTimeTup)
    #print (targetTime)
    if(currentTimeTup == targetTime):
        #print("Time Match")
        return True
    else:
        #print("Does not match yet... Wait")
        return False

while (True):
    if(time_check()):#checks if it is time to post if it is a post will be made
        #print(create_post())
        make_post()
    time.sleep(1)#this will delay the check for one second . This will run 86,399 times between post

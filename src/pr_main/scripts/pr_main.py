import rospy
import std_msgs
from sensor_msgs import Joy

from pr_msg import PrMsg

#definitions and initalization of variables
order_buf = PrMsg() #use as flags
dict_order = {"kick_fire":0,"kick_roll":0,"autorun":0,}

#definitions of pubkisher 
pub = rospy.Publisher("pr_main_order", PrMsg, queue_size=None)

#callback function of Joy
#get joy and set dict_order -1
def pr_cb_joy(buf):
    #set key binding
    if buf.buttons[0] == 1: dict_order[autorun] = -1

#callback function of msg
def pr_cb_msg(getmsg):
    dict_order["kick_fire"] = getmsg.kick_fire
    dict_order["kick_roll"] = getmsg.kick_roll
    dict_order["autorun"] = getmsg.autorun


# for waiting a job
def waitjob(job):
    r = rospy.Rate(10)
    while dict_order[job] == 1:
        r.sleep()
    if dict_order[job] == 2:
        return 0
    else:
        return 1


#main function
def _main():
    rospy.init_node("pr_main")
    
    #definitions of variables
    global order_buf
    step = 0
    r = rospy.Rate(10)

    #definiton of subscriber
    subJoy = rospy.Subscriber("joy_node", Joy, pr_cb_joy)
    subOrder = rospy.Subscriber("pr_main_order", PrMsg, pr_cb_msg)

    #Main loop of PR
    while not rospy.is_shutdown():
        #pick up pass ball and throw them to TR (x4)

        #load kick ball (x3)
        #kick the ball (x3)
        #(extra) load kick ball (x1)
        #(extra) kick the ball (x1)
        r.sleep()

if __name__ == '__main__':
    try:
        _main()
    except rospy.ROSInterruptException: pass
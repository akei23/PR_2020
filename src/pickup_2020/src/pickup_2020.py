#!/usr/bin/env python

import rospy
#from std_msgs.msg import String

#joy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy

from  pr_control.msg import pr_control

pub = rospy.Publisher('chatter', Joy, queue_size=10)

buttons = Joy()

def callback_joy(buf):
    buttons = buf.buttons[0]
    pub.publish(buf)

sub = rospy.Subscriber('joysub', Joy, callback_joy)

def para_in():
    rospy.init_node('pickup_node', anonymous=True)

    r = rospy.Rate(10)

    while not rospy.is_shutdown():
        str = "Hello World %s"%rospy.get_time()
        rospy.loginfo(buttons)
        r.sleep()

if __name__ == '__main__':
    try:
        para_in()
    except rospy.ROSInterruptException: pass
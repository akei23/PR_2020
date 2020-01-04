#!/usr/bin/env python

import rospy
#from std_msgs.msg import String

#joy
from sensor_msgs.msg import Joy

from pr_msg.msg import PrMsg

pub = rospy.Publisher('command_serial', Joy, queue_size=10)

buttons = PrMsg()

def callback_joy(buf):
    buttons.pick_lift = buf.buttons[0]
    buttons.pick_grasp = buf.buttons[1]
    buttons.pick_slide = buf.buttons[2]
    buttons.pick_turn = buf.buttons[3]
    buttons.pass_tee = buf.buttons[4]
    buttons.kick_roll = buf.buttons[5]
    buttons.Kick_fire = buf.buttons[6]
    pub.publish(buttons)

sub = rospy.Subscriber('joy', Joy, callback_joy)

def ma_in():
    rospy.init_node('pickup_node', anonymous=True)
    r = rospy.Rate(10)

    while not rospy.is_shutdown():
        rospy.loginfo(buttons)
        r.sleep()

if __name__ == '__main__':
    try:
        ma_in()
    except rospy.ROSInterruptException: pass
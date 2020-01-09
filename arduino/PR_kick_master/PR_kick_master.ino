#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include <Wire.h>

#include <ros.h>
#include <pr_msg/PrMsg.h>

#include <TimerOne.h>

#include "ti2c.h"
#include "ise_motor_driver.h"

#define TOUCH_PIN 2 //digital pin for touch sensor
#define FIRE_PIN 3  //for solenoid
#define DURATION 1  //solenoid swhiching time (s)

ros::NodeHandle nh;

int fire_order = 0;

//--------set address of motor driver---------
IseMotorDriver kick_roll = IseMotorDriver(0x30);

void fire(int fire_comand){
 //if(digitalRead(TOUCH_PIN) == 1 && fire_order == 1){
  digitalWrite(FIRE_PIN,fire_comand);
  //fire_timer = ros::Time::now();
 //}
}

//callback function
void kick_cb(const pr_msg::PrMsg& msg){
  static long encStart;
  static long encEnd;
  static long encNow;
  static long encDist;
  static bool flag = false;
  
  fire_order = msg.kick_fire;

  fire(fire_order);
  
  /*if(msg.kick_roll >= 0 && !flag){
    kick_roll.setSpeed(int(msg.kick_roll));
    encStart = kick_roll.encoder();
    flag = true;
  }
  if(msg.kick_roll < 0 && flag){
    encEnd = kick_roll.encoder();
    encDist = encEnd - encStart;
    kick_roll.setSpeed(int(msg.kick_roll));
    flag = false;
  }
  if(kick_roll.encoder() - encEnd < encDist && !flag){
    kick_roll.setSpeed(int(msg.kick_roll));
  }*/
}

//definition of subscrber
ros::Subscriber<pr_msg::PrMsg>sub("command_serial",kick_cb);


void setup() {
  Wire.begin();

  nh.initNode();
  nh.subscribe(sub);

  pinMode(TOUCH_PIN,INPUT);
  pinMode(FIRE_PIN,OUTPUT);
}

void loop() {
//  now = ros::Time::now();
  /*f(firetimer.sec + DURATION > now.sec){
    digitalWrite(FIRE_PIN,LOW);
  }*/
  delay(1);
  nh.spinOnce();
}

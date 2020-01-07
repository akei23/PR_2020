#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include <Wire.h>

#include <ros.h>
#include <pr_msg/PrMsg.h>

#include "ti2c.h"
#include "ise_motor_driver.h"
#include "air_cylinder.h"


#define PICK_GRASP_SHOT_PIN 2
#define PICK_GRASP_PULL_PIN 3
#define PASS_TEE_SHOT_PIN 4
#define PASS_TEE_PULL_PIN 5


ros::NodeHandle  nh;

struct MotorHandler
{
  public:
  double target;

};



// ============================== arguments ==============================


IseMotorDriver pick_slide = IseMotorDriver(0x15);//14
IseMotorDriver pick_turn = IseMotorDriver(0x12);//12
IseMotorDriver pick_lift = IseMotorDriver(0x14);//15    

AirCylinder pick_grasp = AirCylinder(PICK_GRASP_SHOT_PIN,PICK_GRASP_PULL_PIN);
AirCylinder pass_tee = AirCylinder(PASS_TEE_SHOT_PIN,PASS_TEE_PULL_PIN);

                                                        
MotorHandler pick_slide_handler;
MotorHandler pick_turn_handler;
MotorHandler pick_lift_handler;





// ============================== callback ==============================

void set_target(MotorHandler *mh, double target)
{
  mh -> target = target;
}




void task_cb(const pr_msg::PrMsg& msg)
{
  set_target(&pick_slide_handler, msg.pick_slide);
  set_target(&pick_turn_handler, msg.pick_turn);
  set_target(&pick_lift_handler, msg.pick_lift);

  pick_slide.setSpeed(pick_slide_handler.target);
  pick_turn.setSpeed(pick_turn_handler.target);
  pick_lift.setSpeed(pick_lift_handler.target);

  if(msg.pick_grasp==1) pick_grasp.shot();
  else if(msg.pick_grasp==-1) pick_grasp.pull();
  else pick_grasp.init();

  if(msg.pass_tee == 1) pass_tee.shot();
  else if(msg.pass_tee == -1)pass_tee.pull();
  else pass_tee.init();
}



ros::Subscriber<pr_msg::PrMsg>sub("command_serial",task_cb);


// ==================== functions ==================== //



void setup() {

  
  Wire.begin();

  nh.initNode();

  nh.subscribe(sub);

  pinMode(PICK_GRASP_SHOT_PIN,OUTPUT);
  pinMode(PICK_GRASP_PULL_PIN,OUTPUT);
  pinMode(PASS_TEE_SHOT_PIN,OUTPUT);
  pinMode(PASS_TEE_PULL_PIN,OUTPUT);
  pick_grasp.init();
  pass_tee.init();
 

  
}



void loop() {
 

 delay(1);
  nh.spinOnce();
  
}

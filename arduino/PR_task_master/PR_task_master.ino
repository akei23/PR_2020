#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include <Wire.h>

#include <ros.h>
#include <pickup_2020/pr_control.h>

#include "ti2c.h"
#include "ise_motor_driver.h"
#include "air_cylinder.h"


ros::NodeHandle  nh;

struct MotorHandler
{
  public:
  double target;

};



// ============================== arguments ==============================


IseMotorDriver pick_slide = IseMotorDriver(0x11);//11
IseMotorDriver pick_turn = IseMotorDriver(0x12);//12
IseMotorDriver pick_lift = IseMotorDriver(0x13);//13    

AirCylinder pick_grasp = AirCylinder(2,3);
AirCylinder pass_tee = AirCylinder(4,5);

                                                        
MotorHandler pick_slide_handler;
MotorHandler pick_turn_handler;
MotorHandler pick_lift_handler;





// ============================== callback ==============================

void set_target(MotorHandler *mh, double target)
{
  mh -> target = target;
}




void task_cb(const pickup_2020::pr_control& msg)
{
  set_target(&pick_slide_handler, msg.pick_slide);
  set_target(&pick_turn_handler, msg.pick_turn);
  set_target(&pick_lift_handler, msg.pick_lift);

  pick_slide.setSpeed(pick_slide_handler.target);
  pick_turn.setSpeed(pick_turn_handler.target);
  pick_slide.setSpeed(pick_lift_handler.target);

  if(msg.pick_grasp) pick_grasp.shot();
  else pick_grasp.pull();

  if(msg.pass_tee) pass_tee.shot();
  else pass_tee.pull();
}



ros::Subscriber<pickup_2020::pr_control>sub("topic_name",task_cb);


// ==================== functions ==================== //



void setup() {

  
  Wire.begin();

  nh.initNode();

  nh.subscribe(sub);
 

  
}



void loop() {
 

 delay(1);
  nh.spinOnce();
  
}

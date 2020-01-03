#include "Arduino.h"
#include "air_cylinder.h"


AirCylinder::AirCylinder(int shot_pin,int pull_pin){

  this->shot_pin = shot_pin;
  this->pull_pin = pull_pin; 

  
}


void AirCylinder::shot(){

  digitalWrite(this->shot_pin,LOW);
  digitalWrite(this->pull_pin,HIGH);

}


void AirCylinder::pull(){

  digitalWrite(this->shot_pin,HIGH);
  digitalWrite(this->pull_pin,LOW);

}


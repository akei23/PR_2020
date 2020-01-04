#ifndef air_cylinder_h
#define air_cylinder_h

#include "Arduino.h"

class AirCylinder {
  public:
    AirCylinder(int shot_pin,int pull_pin);
    void init();
    void shot();
    void pull();

  private:
    int shot_pin;
    int pull_pin;
};
#endif

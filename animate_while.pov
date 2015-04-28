#include "colors.inc"

light_source { <0,5,-50> color White }
light_source { <0,50,0> color White }
light_source { <10,2.5,0> color White }

camera { location <5,3,-10> look_at <1,3,0> } 

#declare time = 0.0;
#declare px = 0.0;
#declare py = 5.0;
#declare vx = 5;
#declare vy = 0.0;
#declare g = 9.8; 

box { <-5,py,2>, <0,-2,-2> pigment {Blue} }
plane { y, 0 pigment {Gray} } 

#while (time <= clock)
  #declare dt = clock_delta;
  #declare px = px+vx*dt;
  #declare py = py+vy*dt-0.5*dt*dt;
  #declare vy = vy-g*dt;
  
  sphere { <px,py,0>, 0.2 pigment {Green} }
  
  #declare time = time + clock_delta;
#end

#include "colors.inc"

camera
{ 
  location <0,0,-70>
  look_at <0,0,0>
}

light_source
{ 
  <10,20,-100>
  color 1
}

background { color rgb< 1, 1, 1>*0.25 }

#declare H2O =
union {
  sphere { <0,0,0>,2 pigment { color Red } }
  sphere { <1.5,0,0>,1.5 pigment { color White } }
  sphere { <1.5,0,0>,1.5 
           pigment { color White }  
           rotate <0,0,104.45>
         }
}

#declare Rnd = seed(5);

#for (i,0,10,1)
  object { H2O 
           translate <-30+60*rand(Rnd),-30+60*rand(Rnd),0>
           rotate <360*rand(Rnd),360*rand(Rnd),360*rand(Rnd)>
         }  
#end
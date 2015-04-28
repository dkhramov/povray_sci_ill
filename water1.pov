#include "colors.inc"

camera
{ 
  location <0,0,-10>
  look_at <0,0,0>
}

light_source
{ 
  <10,20,-20>
  color <1,1,1>
}

union {
  sphere
  {
    <0,0,0>,2
    pigment
    { color Red }
  }

  sphere
  {
    <1.5,0,0>,1.5
    pigment
    { color White }
  }

  sphere
  {
    <1.5,0,0>,1.5
    pigment
    { color White }
    rotate <0,0,104.45> // angles between H atoms
  }
  rotate <0,0,36>
}

#include "colors.inc"

camera
{
  location <0, 3, -6>
  look_at <0, 0, 0>
}

light_source { <20, 20, -40> color White }

plane
{
  y, 0
  pigment { checker color White color Black }
}

box
{
  <-1, 0, -1> , <1, 2, 1>
  pigment { color Green }
  translate <clock, 0, 0>
}

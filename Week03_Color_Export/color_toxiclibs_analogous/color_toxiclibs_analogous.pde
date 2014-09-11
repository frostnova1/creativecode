import toxi.color.*;
import toxi.util.datatypes.*;

void setup()
{
  size(600, 400);
  colorMode(HSB, 1, 1, 1);
  background(1);
  rectMode(CENTER);

  int rectSize = 130;
  
  // first pick red base color
  TColor color1 = TColor.newHSV(0, 1, 1);
  
  // then find colors on each side of this color by adding/subtracting
  // a specific number of degrees on the hue scale. I use 30 here, as the
  // standard color wheel has 12 colors, and 360/12 is 30.
  TColor color2 = TColor.newHSV(color1.hue() - (50f/360f), 1 - (70f/100f), 1);
  TColor color3 = TColor.newHSV(color1.hue() + (50f/360f), 1 - (70f/100f), 1);

  // draw color 2
  noStroke();
  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(width/2 - rectSize, height/2, rectSize, rectSize); 

  // draw color 1
  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(width/2, height/2, rectSize, rectSize);

  // draw color 3
  fill(color3.hue(), color3.saturation(), color3.brightness());
  rect(width/2 + rectSize, height/2, rectSize, rectSize);
}

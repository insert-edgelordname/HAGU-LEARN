//Global Variables:
float tetha = 0;

//Classes:
pattern2 example;

//Setup:
void setup()
{
  size(700, 700);
  
  //classes
  //variable 1 controls the position on the x dimension.
  //variable 2 controls the position on the y dimension.
  //variable 3 controls the amount of times the fractal repeats itself.
  //variable 4 controls the hue.
  //variable 5 controls the saturation.
  //variable 6 controls the brightness.
  //variable 7 controls the opacity.
  example = new pattern2(0, 0, 200, 6, 355, 78, 58, 100);
}

//Draw:
void draw()
{
  colorMode(HSB, 360, 100, 100, 100);
  background(257, 51, 15);
  
  pushMatrix();
    translate(width/2, height/2);
    pushMatrix();
      //rotate(radians(tetha));
      example.display();
    popMatrix();
  popMatrix();
  
  tetha ++;
}

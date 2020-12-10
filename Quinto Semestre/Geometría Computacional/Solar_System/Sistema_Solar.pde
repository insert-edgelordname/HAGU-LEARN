//Planet Creation:
entity Earth;

//Moon Creation
entity Moon;

//Startup Variables:
PVector SunPos;

void setup()
{
  size (600, 600);
  SunPos = new PVector (0, 0);
  
  //Class definition:
  Earth = new entity(SunPos.x, SunPos.y, 100, 0.5, false, 20, 217, 100, 99, 2);
  
}

void draw()
{
  colorMode(HSB, 360, 100, 100);
  
  background(0);
  pushMatrix();
    translate(width/2, height/2);
    fill(53, 85, 92);
    circle(SunPos.x, SunPos.y, 50);
    Earth.display();
  popMatrix();
  
}

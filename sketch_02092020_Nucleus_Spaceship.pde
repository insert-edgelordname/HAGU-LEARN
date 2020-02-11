//Nucleus Spaceship:

void setup()
{
  size (1000, 900);
}

void draw()
{
  noStroke();
  fill (40, 0, 150);
  rect (250, 250, 100, 250);
  fill (40, 0, 120);
  rect (50, 325, 200, 100);
  fill (200, 190, 0);
  rect (325, 250, 25, 250);
  
  fill (50, 50, 75);
  triangle (50, 325, 250, 325, 250, 250);
  triangle (50, 425, 250, 425, 250, 500);
  
  fill (40, 0, 200);
  rect (175, 300, 100 , 150);
}

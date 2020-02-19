//Nucleus Spaceship:

void setup()
{
  size (1000, 900);
}

void draw()
{
  fill (40, 0, 150);
  rect (PosX - 100, PosY - 125, 100, 250);
  fill (40, 0, 120);
  rect (PosX - 300, PosY - 50, 200, 100);
  fill (200, 190, 0);
  rect (PosX - 25, PosY - 125, 25, 250);
  fill (50, 50, 75);
  triangle (PosX, PosY - 50, PosX, PosY + 50, PosX + 50, PosY);
  fill (50, 50, 75);
  triangle (PosX - 300, PosY - 50, PosX - 100, PosY - 50, PosX - 100, PosY - 125);
  triangle (PosX - 300, PosY + 50, PosX - 100, PosY + 50, PosX - 100, PosY + 125);
  
  //Wings
  fill(75, 75, 90);
  triangle (PosX - 200, PosY - 175, PosX - 170, PosY - 75, PosX - 100, PosY - 75);
  triangle (PosX - 200, PosY + 175, PosX - 170, PosY + 75, PosX - 100, PosY + 75);
  fill (80, 0, 255);
  rect (PosX - 225, PosY - 200, 100, 50);
  rect (PosX - 225, PosY + 150, 100, 50);
  fill (255, 255, 0);
  rect (PosX - 150, PosY - 200, 25, 50);
  rect (PosX - 150, PosY + 150, 25, 50);
  
  //Cockpit
  fill (100, 100, 150);
  rect (PosX - 260, PosY - 47.5, 35, 95);
  triangle (PosX - 260, PosY - 47, PosX - 225, PosY - 47, PosX - 225, PosY - 75);
  triangle (PosX - 260, PosY + 47, PosX - 225, PosY + 75, PosX - 225, PosY + 47);
  fill (40, 0, 200);
  rect (PosX - 225, PosY - 75, 150 , 150);
  fill (0, 200, 200);
  rect (PosX - 75, PosY - 50, 55, 100);
  triangle (PosX - 75, PosY - 75, PosX - 75, PosY - 50, PosX - 20, PosY - 50);
  triangle (PosX - 75, PosY + 75, PosX - 75, PosY + 50, PosX - 20, PosY + 50);
}

void setup()
{
  size (1000, 900);
}
void draw()
{
  background (255);
  
  noStroke();
  //Alas:
  fill (155, 0, 5);
  triangle (25 , 50 , 83 , 150 , 175 , 150);
  triangle (25 , 370 , 83 , 270 , 175 , 270);
  
  //Puentes:
  fill (200, 50, 20);
  triangle (45 , 150 , 83 , 190 , 175 , 150);
  triangle (45 , 270 , 83 , 230 , 175 , 270);
  
  //Cuerpo
  fill (100, 80, 70);
  circle (83 , 210 , 50 );
  
  //Cola:
  fill (100, 50, 10);
  triangle (63 , 210 , 43 , 190 , 43 , 230 );
  triangle (1 , 210 , 43 , 190 , 43 , 230 );
  
  //Cockpit:
  fill (255, 0, 0);
  triangle (103 , 210 , 133 , 180 , 133 , 240 );
  triangle (180 , 210 , 133 , 180 , 133 , 240 );
  
  //Window:
  fill (100, 100, 150);
  triangle (170 , 210 , 133 , 185 , 133 , 235 );
  fill (255, 0, 0);
  triangle (150 , 210 , 133 , 185 , 133 , 235 );
}

//Sam and Max FREELANCE POLICE!
float x = 300, y = 300;

void setup()
{
  size (1000, 650);
}

void draw()
{
  noStroke();
  
  //Wheels:
  fill (3, 3, 3);
  rect (240, 235, 40, 20);
  rect (340, 235, 40, 20);
  rect (240, 345, 40, 20);
  rect (340, 345, 40, 20);
  
  //Lower Body
  fill (65, 65, 65);
  rect (285, 239, 50, 10);
  rect (285, 352, 50, 10);
  rect (190, 270, 10, 60);
  
  //Light bulbs front:
  fill (180, 180, 60);
  circle (400, 243, 10);
  circle (400, 356, 10);
  fill (240, 240, 0);
  circle (405, 233, 13);
  circle (405, 366, 13);
  
  //Light bulbs back, lower:
  fill (180, 180, 60);
  circle (200, 250, 20);
  circle (200, 350, 20);
  
  //Base Body:
  fill (0, 0, 20);
  rect (200, 250, 200, 50);
  rect (200, 300, 200, 50);
  
  //Lights front
  fill (0, 0, 20);
  triangle (400, 250, 405, 225, 350, 250);
  triangle (400, 350, 405, 375, 350, 350);
  triangle (400, 250, 420, 300, 400, 350);
  
  //Lights Back
  fill (0, 0, 20);
  triangle (210, 250, 210, 225, 285, 250);
  triangle (210, 250, 210, 225, 200, 250);
  triangle (210, 375, 210, 350, 285, 350);
  triangle (210, 350, 210, 375, 200, 350);
  
  //Center
  fill (255, 0, 0);
  circle (300, 300, 15);
  
  //Doors
  fill (150, 150, 155);
  rect (275, 245, 75, 20);
  rect (275, 335, 75, 20);
  
  //Trunk
  fill (5, 0, 40);
  rect (200, 265, 75, 70);
  
  //Front gUARD????
  fill (80, 80, 80);
  triangle (400, 350, 420, 300, 407, 350);
  triangle (427, 300, 420, 300, 407, 350);
  
  triangle (400, 250, 420, 300, 407, 250);
  triangle (427, 300, 420, 300, 407, 250);
  
  //Front
  fill (5, 0, 40);
  triangle (350, 265, 400, 250, 350, 335);
  triangle (350, 335, 400, 350, 400, 250);
  triangle (400, 250, 400, 350, 420, 300);
  
  //Spoilers Above
  fill (10, 0, 55);
  triangle (230, 280, 230, 250, 155, 255);
  triangle (230, 320, 230, 350, 155, 345);
  
  //Spoilers Below
  triangle (230, 280, 230, 250, 250, 265);
  triangle (230, 320, 230, 350, 250, 335);
  
  //Window:
  fill (70, 175, 180);
  rect (253, 263, 20, 74);
  rect (349, 263, 20, 74);
  
  //Ceiling 
  fill (10, 0, 105);
  rect (273, 263, 79, 74);
  
  //Police Sirens:
  fill (100, 100, 100);
  rect (295, 298, 10, 4);
  fill (150, 0, 0);
  rect (290, 278, 20, 20);
  fill (20, 0, 150);
  rect (290, 302, 20, 20);
}

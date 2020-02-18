//Dread

void setup()
{
  size (1000, 900);
}

void draw()
{
  noStroke();
  
  //Wings:
  fill (205, 50, 50);
  triangle (160, 300, 200, 255, 250, 275);
  triangle (160, 300, 200, 345, 250, 325);
  
  fill (125, 55, 90);
  triangle (175, 300, 215, 255, 300, 275);
  triangle (175, 300, 215, 345, 300, 325);
  
  //middle tentacle:
  fill (200, 190, 90);
  triangle (95, 300, 105, 300, 85, 260);
  triangle (95, 300, 105, 300, 85, 340);

  fill (80, 33, 85);
  triangle (300, 278, 100, 300, 300, 300);
  triangle (300, 322, 100, 300, 300, 300);
  circle (100, 300, 20);
  
  
  //left tentacle:
  fill (70, 25, 73);
  triangle (275, 265, 300, 295, 175, 250);
  triangle (175, 250, 200, 253, 120, 200);
  circle (120, 200, 15);
  
  fill (200, 190, 90);
  triangle (120, 196, 120, 204, 90, 190);
  
  //right tentacle:
  fill (70, 25, 73);
  triangle (275, 335, 300, 305, 175, 350);
  triangle (175, 350, 200, 347, 120, 400);
  circle (120, 400, 15);
  
  fill (200, 190, 90);
  triangle (120, 404, 120, 396, 90, 410);
  
  //teeth
  fill (230, 210, 90);
  ///first row of teeth
  triangle (320, 268, 325, 274, 344, 275);
  triangle (330, 274, 328, 280, 348, 280);
  triangle (330, 280, 333, 286, 348, 283);
  
  ///second row of teeth
  fill (250, 250, 100);
  triangle (330, 285, 335, 291, 355, 289);
  triangle (330, 290, 335, 303, 357, 294);
  triangle (330, 295, 330, 305, 360, 300);
  triangle (330, 310, 335, 297, 357, 306);
  triangle (330, 315, 335, 309, 355, 311);
  
  ///third row of teeth
  fill (230, 210, 90);
  triangle (330, 320, 333, 314, 348, 317);
  triangle (330, 326, 328, 320, 348, 320);
  triangle (320, 332, 325, 326, 344, 325);
  
  //mouth gum
  fill (240, 100, 140);
  circle (300, 300, 76);
  
  //head
  fill (120, 50, 125);
  arc (305, 300, 85, 85, QUARTER_PI, PI + HALF_PI + QUARTER_PI);
  circle (305, 300, 40);
  triangle (335, 268, 320, 256, 290, 260);
  triangle (335, 332, 320, 344, 290, 340);
  
  //horns
  triangle (275, 280, 245, 260, 290, 325);
  triangle (245, 260, 275, 240, 255, 265);
  circle (255, 265, 20);
  triangle (275, 320, 245, 340, 290, 275);
  triangle (245, 340, 275, 360, 255, 335);
  circle (255, 335, 20);
  triangle (250, 300, 220, 292, 300, 280);
  triangle (250, 300, 220, 308, 300, 320);
  
  //eyes:
  fill (245, 50, 50);
  circle (255, 300, 20);
  circle (300, 300, 35);
  
  fill (250, 240, 0);
  ellipse (255, 300, 19, 5);
  ellipse (300, 300, 33, 8);
  
  fill (50, 15, 15);
  ellipse (255, 300, 17, 4);
  ellipse (300, 300, 30, 6);
}

//Global Variables:
int camera = 0;
float speenX = 0;
float speenY = 0;
float speenZ = 0;
//Classes:

//Setup:
void setup()
{
  size(500, 500, P3D);
}

//Draw:
void draw()
{ 
  colorMode(HSB, 360, 100, 100);
  background(253, 32, 55);
  
  speen_ctrl();
  
  switch(camera)
  {
    case 0:
      noStroke();
      fill(0, 100, 100, 30);
      beginShape();
        vertex(20, 20, 0);
        vertex(40, 20, 0);
        vertex(40, 40, 0);
        vertex(20, 40, 0);
      endShape(CLOSE);
      
      noStroke();
      fill(119, 100, 100, 30);
      beginShape();
        vertex(50, 20, 0);
        vertex(70, 20, 0);
        vertex(70, 40, 0);
        vertex(50, 40, 0);
      endShape(CLOSE);
      
      noStroke();
      fill(239, 100, 100, 30);
      beginShape();
        vertex(80, 20, 0);
        vertex(100, 20, 0);
        vertex(100, 40, 0);
        vertex(80, 40, 0);
      endShape(CLOSE);
    break;
    
    case 1:
      stroke(0, 0, 0, 100);
      fill(0, 100, 100, 100);
      beginShape();
        vertex(20, 20, 0);
        vertex(40, 20, 0);
        vertex(40, 40, 0);
        vertex(20, 40, 0);
      endShape(CLOSE);
      
      noStroke();
      fill(119, 100, 100, 30);
      beginShape();
        vertex(50, 20, 0);
        vertex(70, 20, 0);
        vertex(70, 40, 0);
        vertex(50, 40, 0);
      endShape(CLOSE);
      
      noStroke();
      fill(239, 100, 100, 30);
      beginShape();
        vertex(80, 20, 0);
        vertex(100, 20, 0);
        vertex(100, 40, 0);
        vertex(80, 40, 0);
      endShape(CLOSE);
    break;
    
    case 2:
    noStroke();
      fill(0, 100, 100, 30);
      beginShape();
        vertex(20, 20, 0);
        vertex(40, 20, 0);
        vertex(40, 40, 0);
        vertex(20, 40, 0);
      endShape(CLOSE);
      
      stroke(0, 0, 0, 100);
      fill(119, 100, 100, 100);
      beginShape();
        vertex(50, 20, 0);
        vertex(70, 20, 0);
        vertex(70, 40, 0);
        vertex(50, 40, 0);
      endShape(CLOSE);
      
      noStroke();
      fill(239, 100, 100, 30);
      beginShape();
        vertex(80, 20, 0);
        vertex(100, 20, 0);
        vertex(100, 40, 0);
        vertex(80, 40, 0);
      endShape(CLOSE);
    break;
    
    case 3:
    noStroke();
      fill(0, 100, 100, 30);
      beginShape();
        vertex(20, 20, 0);
        vertex(40, 20, 0);
        vertex(40, 40, 0);
        vertex(20, 40, 0);
      endShape(CLOSE);
      
      noStroke();
      fill(119, 100, 100, 30);
      beginShape();
        vertex(50, 20, 0);
        vertex(70, 20, 0);
        vertex(70, 40, 0);
        vertex(50, 40, 0);
      endShape(CLOSE);
      
      stroke(0, 0, 0, 100);
      fill(239, 100, 100, 100);
      beginShape();
        vertex(80, 20, 0);
        vertex(100, 20, 0);
        vertex(100, 40, 0);
        vertex(80, 40, 0);
      endShape(CLOSE);
    break;
  }
  
  pushMatrix();
  translate(width/2, height/2 + 100, 0);
    rotateX(radians(speenX));
    rotateY(radians(speenY));
    rotateZ(radians(speenZ));
      chart(250);
      pushMatrix();
      platform(0, 0, 0, 325);
        pillar(-40, 0, 0, 100, 40);
        pillar(-5, 0, 35, 150, 20);
        pillar(25, 0, 45, 60, 12);
        pillar(39, 0, -15, 75, 60);
        pillar(-15, 0, 60, 35, 10);
        pillar(-60, 0, -58, 178, 27);
        pillar(-10, 0, -90, 58, 44);
        pillar(-15, 0, -44, 65, 22);
        pillar(50, 0, 50, 30, 35);
        pillar(48, 0, -79, 37, 40);
        
        pushMatrix();
        translate(90, -150, 0);
          rotateY(radians(270));
          rotateZ(radians(35));
          bee(0, 0, 0, 10);
        popMatrix();
        
        pushMatrix();
        translate(-15, -120, -40);
          rotateY(radians(10));
          rotateX(radians(-25));
          bee(0, 0, 0, 10);
        popMatrix();
        
        pushMatrix();
        translate(120, -50, -20);
          rotateY(radians(200));
          rotateX(radians(35));
          bee(0, 0, 0, 10);
        popMatrix();
        
      popMatrix();
  popMatrix();
}

//Cartesian:
void chart(float side)
{
  //Variables:
  colorMode(RGB, 255, 255, 255);
  
  //X:
  strokeWeight(3);
  stroke(255, 0, 0);
  line(0, 0, 0, side, 0, 0);
  
  line(side, 0, 0, side, 15, 0);
  line(side, 0, 0, side, 0, -15);
  
  //Y:
  strokeWeight(3);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, side, 0);
  
  line(0, side, 0, 15, side, 0);
  line(0, side, 0, 0, side, -15);
  
  //Z:
  strokeWeight(3);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, -side);
  
  line(0, 0, -side, 15, 0, -side);
  line(0, 0, -side, 0, 15, -side);
}

//Key Controls:
void keyPressed()
{
  if (key == '0')
  {
    speenX = 0;
    speenY = 0;
    speenZ = 0;
  }
  
  //Camera Controls X:
  if ( (key == 'x') || (key == 'X') )
  {
    camera = 1;
  }
  
  //Camera Controls Y:
  if ( (key == 'y') || (key == 'Y') )
  {
    camera = 2;
  }
  
  //Camera Controls Z: 
  if ( (key == 'z') || (key == 'Z') )
  {
    camera = 3;
  }
}
  
void speen_ctrl()
{
  //Speen:
  if (keyPressed == true)
  {
    if ( (keyCode == LEFT))
    {
      switch(camera)
      {
        case 0:
        //nothing lmao
        break;
        
        case 1:
          speenX += 0.25;
        break;
        
        case 2:
          speenY += 0.25;
        break;
        
        case 3:
          speenZ += 0.25;
        break;
      }
    }
      
    if ( (keyCode == RIGHT))
    {
      switch(camera)
      {
        case 1:
          speenX -= 0.25;
        break;
        
        case 2:
          speenY -= 0.25;
        break;
        
        case 3:
          speenZ -= 0.25;
        break;
      }
    }
  }
}

void bee(float posX, float posY, float posZ, float side)
{
  colorMode(HSB, 360, 100, 100, 100);
  //Base Variables:
  float s1 = side/2;
  float s2 = side/5;
  float s3 = (side/3) * 2;
  
  //Construction:
  //Buzzing Body:
  fill(47, 93, 97, 100);
  beginShape();
    vertex(posX - side, posY, posZ);
    vertex(posX, posY - side, posZ);
    vertex(posX + side, posY, posZ);
    vertex(posX, posY + side, posZ);
  endShape(CLOSE);
  
  beginShape(QUAD_STRIP);
    vertex(posX - side, posY, posZ);
    vertex(posX - side, posY, posZ - (s1));
    vertex(posX, posY - side, posZ);
    vertex(posX, posY - side, posZ - (s1));
    vertex(posX + side, posY, posZ);
    vertex(posX + side, posY, posZ - (s1));
    vertex(posX, posY + side, posZ);
    vertex(posX, posY + side, posZ - (s1));
    vertex(posX - side, posY, posZ);
    vertex(posX - side, posY, posZ - (s1));
  endShape(CLOSE);
  
  fill(268, 16, 19, 100);
  beginShape(QUAD_STRIP);
    vertex(posX - side, posY, posZ - s1);
    vertex(posX - side, posY, posZ - (s1 + s2));
    vertex(posX, posY - side, posZ - s1);
    vertex(posX, posY - side, posZ - (s1 + s2));
    vertex(posX + side, posY, posZ - s1);
    vertex(posX + side, posY, posZ - (s1 + s2));
    vertex(posX, posY + side, posZ - s1);
    vertex(posX, posY + side, posZ - (s1 + s2));
    vertex(posX - side, posY, posZ - s1);
    vertex(posX - side, posY, posZ - (s1 + s2));
  endShape(CLOSE);
  
  fill(42, 90, 95, 100);
  beginShape(QUAD_STRIP);
    vertex(posX - side, posY, posZ - (s1 + s2));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 2)));
    vertex(posX, posY - side, posZ - (s1 + s2));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 2)));
    vertex(posX + side, posY, posZ - (s1 + s2));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 2)));
    vertex(posX, posY + side, posZ - (s1 + s2));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 2)));
    vertex(posX - side, posY, posZ - (s1 + s2));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 2)));
  endShape(CLOSE);
  
  fill(268, 16, 16, 100);
  beginShape(QUAD_STRIP);
    vertex(posX - side, posY, posZ - (s1 + (s2 * 2)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 3)));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 2)));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 3)));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 2)));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 3)));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 2)));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 3)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 2)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 3)));
  endShape(CLOSE);
  
  fill(39, 90, 95, 100);
  beginShape(QUAD_STRIP);
    vertex(posX - side, posY, posZ - (s1 + (s2 * 3)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 4)));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 3)));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 4)));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 3)));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 4)));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 3)));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 4)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 3)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 4)));
  endShape(CLOSE);
  
  fill(268, 16, 13, 100);
  beginShape(QUAD_STRIP);
    vertex(posX - side, posY, posZ - (s1 + (s2 * 4)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 6)));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 4)));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 6)));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 4)));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 6)));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 4)));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 6)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 4)));
    vertex(posX - side, posY, posZ - (s1 + (s2 * 6)));
  endShape(CLOSE);
  
  fill(268, 16, 10, 100);
  beginShape();
    vertex(posX - side, posY, posZ - (s1 + (s2 * 6)));
    vertex(posX, posY - side, posZ - (s1 + (s2 * 6)));
    vertex(posX + side, posY, posZ - (s1 + (s2 * 6)));
    vertex(posX, posY + side, posZ - (s1 + (s2 * 6)));
  endShape(CLOSE);
  
  //Sting:
  fill(268, 16, 19, 100);
  beginShape(QUAD_STRIP);
    vertex(posX, posY - s1, posZ - (s1 + (s2 * 6)));
    vertex(posX, posY - (s1 - s2), posZ - (s1 + (s2 * 8)));
    vertex(posX - s1, posY, posZ - (s1 + (s2 * 6)));
    vertex(posX - (s1 - s2), posY, posZ - (s1 + (s2 * 8)));
    vertex(posX, posY + s1, posZ - (s1 + (s2 * 6)));
    vertex(posX, posY + (s1 - s2), posZ - (s1 + (s2 * 8)));
    vertex(posX + s1, posY, posZ - (s1 + (s2 * 6)));
    vertex(posX + (s1 - s2), posY, posZ - (s1 + (s2 * 8)));
    vertex(posX, posY - s1, posZ - (s1 + (s2 * 6)));
    vertex(posX, posY - (s1 - s2), posZ - (s1 + (s2 * 8)));
  endShape(CLOSE);
  
  fill(307, 24, 30, 100);
  beginShape(QUAD_STRIP);
    vertex(posX, posY - (s1 - s2), posZ - (s1 + (s2 * 8)));
    vertex(posX, posY, posZ - (s1 + (s2 * 10.5)));
    vertex(posX - (s1 - s2), posY, posZ - (s1 + (s2 * 8)));
    vertex(posX, posY, posZ - (s1 + (s2 * 10.5)));
    vertex(posX, posY + (s1 - s2), posZ - (s1 + (s2 * 8)));
    vertex(posX, posY, posZ - (s1 + (s2 * 10.5)));
    vertex(posX + (s1 - s2), posY, posZ - (s1 + (s2 * 8)));
    vertex(posX, posY, posZ - (s1 + (s2 * 10.5)));
    vertex(posX, posY - (s1 - s2), posZ - (s1 + (s2 * 8)));
    vertex(posX, posY, posZ - (s1 + (s2 * 10.5)));
  endShape(CLOSE);
  
  //Wings:
  fill(268, 5, 98, 30);
  beginShape();
    vertex(posX - s3, posY - s1, posZ - s3);
    vertex(posX - (side + s3), posY - (s2 + s3), posZ - (s3 - (s2 * 2)));
    vertex(posX - (side * 2), posY - (side + s1), posZ - s3);
    vertex(posX - (side + s3), posY - (s2 + s3), posZ - (s3 + (s2 * 2)));
  endShape();
  
  beginShape();
    vertex(posX + s3, posY - s1, posZ - s3);
    vertex(posX + (side + s3), posY - (s2 + s3), posZ - (s3 - (s2 * 2)));
    vertex(posX + (side * 2), posY - (side + s1), posZ - s3);
    vertex(posX + (side + s3), posY - (s2 + s3), posZ - (s3 + (s2 * 2)));
  endShape();
  
  //Antenna:
  stroke(268, 16, 13, 100);
  strokeWeight(2);
  line(posX - (s1/2), posY - s3, posZ + (side + s2), posX - ((s1/2) + s2), posY - side, posZ + (side * 2));
  line(posX + (s1/2), posY - s3, posZ + (side + s2), posX + ((s1/2) + s2), posY - side, posZ + (side * 2));
  
  stroke(307, 24, 20, 100);
  line(posX - ((s1/2) + s2), posY - side, posZ + (side * 2), posX - side, posY - (side - s2), posZ + (side * 2.5));
  line(posX + ((s1/2) + s2), posY - side, posZ + (side * 2), posX + side, posY - (side - s2), posZ + (side * 2.5));
  
  //Head:
  noStroke();
  fill(268, 16, 23, 100);
  beginShape(QUAD_STRIP);
    vertex(posX - s3, posY - s3, posZ);
    vertex(posX - s3, posY - s3, posZ + (s3 * 2));
    vertex(posX + s3, posY - s3, posZ);
    vertex(posX + s3, posY - s3, posZ + (s3 * 2));
    vertex(posX + s3, posY + s3, posZ);
    vertex(posX + s3, posY + s3, posZ + (s3 * 2));
    vertex(posX - s3, posY + s3, posZ);
    vertex(posX - s3, posY + s3, posZ + (s3 * 2));
    vertex(posX - s3, posY - s3, posZ);
    vertex(posX - s3, posY - s3, posZ + (s3 * 2));
  endShape(CLOSE);
  
  beginShape();
    vertex(posX - s3, posY - s3, posZ);
    vertex(posX + s3, posY - s3, posZ);
    vertex(posX + s3, posY + s3, posZ);
    vertex(posX - s3, posY + s3, posZ);
  endShape();
  
  fill(268, 16, 25, 100);
  beginShape();
    vertex(posX - s3, posY - s3, posZ + (s3 * 2));
    vertex(posX + s3, posY - s3, posZ + (s3 * 2));
    vertex(posX + s3, posY + s3, posZ + (s3 * 2));
    vertex(posX - s3, posY + s3, posZ + (s3 * 2));
  endShape();
  
  //Eyes:
  fill(260, 26, 85, 100);
  beginShape(QUAD_STRIP);
    vertex(posX - (s1/2), posY - s2, posZ + (s3 * 1.5));
    vertex(posX - (s1/2), posY - s2, posZ + (s3 * 2.25));
    vertex(posX - ((s1/2) + s1), posY - s2, posZ + (s3 * 1.5));
    vertex(posX - ((s1/2) + s1), posY - s2, posZ + (s3 * 2.25));
    vertex(posX - ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 1.5));
    vertex(posX - ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 2.25));
    vertex(posX - (s1/2), posY + (s2 * 3), posZ + (s3 * 1.5));
    vertex(posX - (s1/2), posY + (s2 * 3), posZ + (s3 * 2.25));
    vertex(posX - (s1/2), posY - s2, posZ + (s3 * 1.5));
    vertex(posX - (s1/2), posY - s2, posZ + (s3 * 2.25));
  endShape(CLOSE);
  
  fill(258, 26, 82, 100);
  beginShape();
    vertex(posX - (s1/2), posY - s2, posZ + (s3 * 1.5));
    vertex(posX - ((s1/2) + s1), posY - s2, posZ + (s3 * 1.5));
    vertex(posX - ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 1.5));
    vertex(posX - (s1/2), posY + (s2 * 3), posZ + (s3 * 1.5));
  endShape();
  
  fill(262, 26, 88, 100);
  beginShape();
    vertex(posX - (s1/2), posY - s2, posZ + (s3 * 2.25));
    vertex(posX - ((s1/2) + s1), posY - s2, posZ + (s3 * 2.25));
    vertex(posX - ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 2.25));
    vertex(posX - (s1/2), posY + (s2 * 3), posZ + (s3 * 2.25));
  endShape();
  
  fill(260, 26, 85, 100);
  beginShape(QUAD_STRIP);
    vertex(posX + (s1/2), posY - s2, posZ + (s3 * 1.5));
    vertex(posX + (s1/2), posY - s2, posZ + (s3 * 2.25));
    vertex(posX + ((s1/2) + s1), posY - s2, posZ + (s3 * 1.5));
    vertex(posX + ((s1/2) + s1), posY - s2, posZ + (s3 * 2.25));
    vertex(posX + ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 1.5));
    vertex(posX + ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 2.25));
    vertex(posX + (s1/2), posY + (s2 * 3), posZ + (s3 * 1.5));
    vertex(posX + (s1/2), posY + (s2 * 3), posZ + (s3 * 2.25));
    vertex(posX + (s1/2), posY - s2, posZ + (s3 * 1.5));
    vertex(posX + (s1/2), posY - s2, posZ + (s3 * 2.25));
  endShape(CLOSE);
  
  fill(258, 26, 82, 100);
  beginShape();
    vertex(posX + (s1/2), posY - s2, posZ + (s3 * 1.5));
    vertex(posX + ((s1/2) + s1), posY - s2, posZ + (s3 * 1.5));
    vertex(posX + ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 1.5));
    vertex(posX + (s1/2), posY + (s2 * 3), posZ + (s3 * 1.5));
  endShape();
  
  fill(262, 26, 88, 100);
  beginShape();
    vertex(posX + (s1/2), posY - s2, posZ + (s3 * 2.25));
    vertex(posX + ((s1/2) + s1), posY - s2, posZ + (s3 * 2.25));
    vertex(posX + ((s1/2) + s1), posY + (s2 * 3), posZ + (s3 * 2.25));
    vertex(posX + (s1/2), posY + (s2 * 3), posZ + (s3 * 2.25));
  endShape();
  
}

void pillar(float posX, float posY, float posZ, float h, float side)
{
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  //Base Variables:
  float c = pow(side, 2);
  float b = pow((side/2), 2);
  float a = sqrt((c - b));
  
  //Height Variation:
  float h1 = h * 0.5;
  float h2 = h * 0.1;
  
  //Center Variables:
  float at = a * 0.68;
  float ct = at / (sin(radians(60)));
  
  //Lower Base:
  fill(268, 16, 19, 100);
  beginShape();
    vertex(posX + (side/2), posY, posZ + a);
    vertex(posX + side, posY, posZ);
    vertex(posX + (side/2), posY, posZ - a);
    vertex(posX - (side/2), posY, posZ - a);
    vertex(posX - side, posY, posZ);
    vertex(posX - (side/2), posY, posZ + a);
  endShape(CLOSE);
  
  //Height 1:
  fill(268, 16, 29, 100);
  beginShape(QUAD_STRIP);  
    vertex(posX + (side/2), posY, posZ + a);
    vertex(posX + (side/2), posY - h1, posZ + a);
    vertex(posX + side, posY, posZ);
    vertex(posX + side, posY - h1, posZ);
    vertex(posX + (side/2), posY, posZ - a);
    vertex(posX + (side/2), posY - h1, posZ - a);
    vertex(posX - (side/2), posY, posZ - a);
    vertex(posX - (side/2), posY - h1, posZ - a);
    vertex(posX - side, posY, posZ);
    vertex(posX - side, posY - h1, posZ);
    vertex(posX - (side/2), posY, posZ + a);
    vertex(posX - (side/2), posY - h1, posZ + a);
    vertex(posX + (side/2), posY, posZ + a);
    vertex(posX + (side/2), posY - h1, posZ + a);
  endShape(CLOSE);
  
  //Height 2:
  fill(307, 24, 30, 100);
  beginShape(QUAD_STRIP);  
    vertex(posX + (side/2), posY - h1, posZ + a);
    vertex(posX + (side/2), posY - (h1 + h2), posZ + a);
    vertex(posX + side, posY - h1, posZ);
    vertex(posX + side, posY - (h1 + h2), posZ);
    vertex(posX + (side/2), posY - h1, posZ - a);
    vertex(posX + (side/2), posY - (h1 + h2), posZ - a);
    vertex(posX - (side/2), posY - h1, posZ - a);
    vertex(posX - (side/2), posY - (h1 + h2), posZ - a);
    vertex(posX - side, posY - h1, posZ);
    vertex(posX - side, posY - (h1 + h2), posZ);
    vertex(posX - (side/2), posY - h1, posZ + a);
    vertex(posX - (side/2), posY - (h1 + h2), posZ + a);
    vertex(posX + (side/2), posY - h1, posZ + a);
    vertex(posX + (side/2), posY - (h1 + h2), posZ + a);
  endShape(CLOSE);
  
  //Height 3:
  fill(347, 35, 37, 100);
  beginShape(QUAD_STRIP);  
    vertex(posX + (side/2), posY - (h1 + h2), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 2)), posZ + a);
    vertex(posX + side, posY - (h1 + h2), posZ);
    vertex(posX + side, posY - (h1 + (h2 * 2)), posZ);
    vertex(posX + (side/2), posY - (h1 + h2), posZ - a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 2)), posZ - a);
    vertex(posX - (side/2), posY - (h1 + h2), posZ - a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 2)), posZ - a);
    vertex(posX - side, posY - (h1 + h2), posZ);
    vertex(posX - side, posY - (h1 + (h2 * 2)), posZ);
    vertex(posX - (side/2), posY - (h1 + h2), posZ + a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 2)), posZ + a);
    vertex(posX + (side/2), posY - (h1 + h2), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 2)), posZ + a);
  endShape(CLOSE);
  
  //Height 4:
  fill(28, 51, 45, 100);
  beginShape(QUAD_STRIP);  
    vertex(posX + (side/2), posY - (h1 + (h2 * 2)), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 3)), posZ + a);
    vertex(posX + side, posY - (h1 + (h2 * 2)), posZ);
    vertex(posX + side, posY - (h1 + (h2 * 3)), posZ);
    vertex(posX + (side/2), posY - (h1 + (h2 * 2)), posZ - a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 3)), posZ - a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 2)), posZ - a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 3)), posZ - a);
    vertex(posX - side, posY - (h1 + (h2 * 2)), posZ);
    vertex(posX - side, posY - (h1 + (h2 * 3)), posZ);
    vertex(posX - (side/2), posY - (h1 + (h2 * 2)), posZ + a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 3)), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 2)), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 3)), posZ + a);
  endShape(CLOSE);
  
  //Height 5:
  fill(36, 69, 55, 100);
  beginShape(QUAD_STRIP);  
    vertex(posX + (side/2), posY - (h1 + (h2 * 3)), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 4)), posZ + a);
    vertex(posX + side, posY - (h1 + (h2 * 3)), posZ);
    vertex(posX + side, posY - (h1 + (h2 * 4)), posZ);
    vertex(posX + (side/2), posY - (h1 + (h2 * 3)), posZ - a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 4)), posZ - a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 3)), posZ - a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 4)), posZ - a);
    vertex(posX - side, posY - (h1 + (h2 * 3)), posZ);
    vertex(posX - side, posY - (h1 + (h2 * 4)), posZ);
    vertex(posX - (side/2), posY - (h1 + (h2 * 3)), posZ + a);
    vertex(posX - (side/2), posY - (h1 + (h2 * 4)), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 3)), posZ + a);
    vertex(posX + (side/2), posY - (h1 + (h2 * 4)), posZ + a);
  endShape(CLOSE);
  
  //Height 6:
  fill(43, 69, 60, 100);
    beginShape(QUAD_STRIP);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ + a);
      vertex(posX, posY - h, posZ + a);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ + at);
      vertex(posX, posY - h, posZ + at);
      vertex(posX - (ct/2), posY - (h1 + (h2 * 4)), posZ + at);
      vertex(posX - (ct/2), posY - h, posZ + at);
      vertex(posX - ct, posY - (h1 + (h2 * 4)), posZ);
      vertex(posX - ct, posY - h, posZ);
      vertex(posX - (ct/2), posY - (h1 + (h2 * 4)), posZ - at);
      vertex(posX - (ct/2), posY - h, posZ - at);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ - at);
      vertex(posX, posY - h, posZ - at);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ - a);
      vertex(posX, posY - h, posZ - a);
      vertex(posX - (side/2), posY - (h1 + (h2 * 4)), posZ - a);
      vertex(posX - (side/2), posY - h, posZ - a);
      vertex(posX - side, posY - (h1 + (h2 * 4)), posZ);
      vertex(posX - side, posY - h, posZ);
      vertex(posX - (side/2), posY - (h1 + (h2 * 4)), posZ + a);
      vertex(posX - (side/2), posY - h, posZ + a);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ + a);
      vertex(posX, posY - h, posZ + a);
    endShape(CLOSE);
    
    beginShape(QUAD_STRIP);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ + a);
      vertex(posX, posY - h, posZ + a);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ + at);
      vertex(posX, posY - h, posZ + at);
      vertex(posX + (ct/2), posY - (h1 + (h2 * 4)), posZ + at);
      vertex(posX + (ct/2), posY - h, posZ + at);
      vertex(posX + ct, posY - (h1 + (h2 * 4)), posZ);
      vertex(posX + ct, posY - h, posZ);
      vertex(posX + (ct/2), posY - (h1 + (h2 * 4)), posZ - at);
      vertex(posX + (ct/2), posY - h, posZ - at);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ - at);
      vertex(posX, posY - h, posZ - at);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ - a);
      vertex(posX, posY - h, posZ - a);
      vertex(posX + (side/2), posY - (h1 + (h2 * 4)), posZ - a);
      vertex(posX + (side/2), posY - h, posZ - a);
      vertex(posX + side, posY - (h1 + (h2 * 4)), posZ);
      vertex(posX + side, posY - h, posZ);
      vertex(posX + (side/2), posY - (h1 + (h2 * 4)), posZ + a);
      vertex(posX + (side/2), posY - h, posZ + a);
      vertex(posX, posY - (h1 + (h2 * 4)), posZ + a);
      vertex(posX, posY - h, posZ + a);
    endShape(CLOSE);
    
  //Cover:
    fill(43, 74, 67, 100);
    beginShape();
      vertex(posX, posY - h, posZ + a);
      vertex(posX, posY - h, posZ + at);
      vertex(posX - (ct/2), posY - h, posZ + at);
      vertex(posX - ct, posY - h, posZ);
      vertex(posX - (ct/2), posY - h, posZ - at);
      vertex(posX, posY - h, posZ - at);
      vertex(posX, posY - h, posZ - a);
      vertex(posX - (side/2), posY - h, posZ - a);
      vertex(posX - side, posY - h, posZ);
      vertex(posX - (side/2), posY - h, posZ + a);
      vertex(posX, posY - h, posZ + a);
    endShape();
    
    beginShape();
      vertex(posX, posY - h, posZ + a);
      vertex(posX, posY - h, posZ + at);
      vertex(posX + (ct/2), posY - h, posZ + at);
      vertex(posX + ct, posY - h, posZ);
      vertex(posX + (ct/2), posY - h, posZ - at);
      vertex(posX, posY - h, posZ - at);
      vertex(posX, posY - h, posZ - a);
      vertex(posX + (side/2), posY - h, posZ - a);
      vertex(posX + side, posY - h, posZ);
      vertex(posX + (side/2), posY - h, posZ + a);
      vertex(posX, posY - h, posZ + a);
    endShape();
    
    //Honey:
    fill(46, 85, 93, 50);
    beginShape(QUAD_STRIP);
      vertex(posX + (ct/2), posY - h2, posZ + at);
      vertex(posX + (ct/2), posY - (h - (h2 / 2)), posZ + at);
      vertex(posX + ct, posY - h2, posZ);
      vertex(posX + ct, posY - (h - (h2 / 2)), posZ);
      vertex(posX + (ct/2), posY - h2, posZ - at);
      vertex(posX + (ct/2), posY - (h - (h2 / 2)), posZ - at);
      vertex(posX - (ct/2), posY - h2, posZ - at);
      vertex(posX - (ct/2), posY - (h - (h2 / 2)), posZ - at);
      vertex(posX - ct, posY - h2, posZ);
      vertex(posX - ct, posY - (h - (h2 / 2)), posZ);
      vertex(posX - (ct/2), posY - h2, posZ + at);
      vertex(posX - (ct/2), posY - (h - (h2 / 2)), posZ + at);
      vertex(posX + (ct/2), posY - h2, posZ + at);
      vertex(posX + (ct/2), posY - (h - (h2 / 2)), posZ + at);
    endShape(CLOSE);
    
    beginShape();
      vertex(posX + (ct/2), posY - (h - (h2 / 2)), posZ + at);
      vertex(posX + ct, posY - (h - (h2 / 2)), posZ);
      vertex(posX + (ct/2), posY - (h - (h2 / 2)), posZ - at);
      vertex(posX - (ct/2), posY - (h - (h2 / 2)), posZ - at);
      vertex(posX - ct, posY - (h - (h2 / 2)), posZ);
      vertex(posX - (ct/2), posY - (h - (h2 / 2)), posZ + at);
      vertex(posX + (ct/2), posY - (h - (h2 / 2)), posZ + at);
    endShape(CLOSE);
}

void platform(float posX, float posY, float posZ, float side)
{
  noStroke();
  colorMode(HSB, 360, 100, 100);
  fill(268, 16, 26, 100);
  beginShape();
  vertex(posX - (side/2), posY, posZ + (side/2));
    vertex(posX - (side/2), posY, posZ - (side/1.5));
    vertex(posX + (side/2), posY, posZ - (side/1.5));
    vertex(posX + (side/2), posY, posZ + (side/2));
  endShape(CLOSE);
}

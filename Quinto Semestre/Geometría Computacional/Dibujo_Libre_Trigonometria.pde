//Global Variables:
//Quad Variables
float quad_a;
float quad_b;

float quad_c;
float quad_d;

float quad_radio = 10;

float huey = 269;
float bright = 25;
float huey_inc = 2.25;
float bright_inc = 1.25;
boolean rev = false;

//Regular Circle 1:
float radius2 = 450;

//circle 1:
float grad1 = 0;
float rad1;

float grad2 = 0;
float rad2;

float radius1 = 100;
float posX = 300, posY = 300;

//Neutrons 
int dewey;

void setup()
{
  size (600, 600);
  
  colorMode(HSB, 360, 100, 100);
  
  noStroke();
  
  for(int i = 0, j = 4; i < 600; i += 50)
  {
    fill(300, 83, 50 - j);
    rect(0, i, 600, 50);
    j += 4;
  }
  
  
  for ( int i = 0; i < 100 ; i++)
  {
    strokeWeight(round(random (0, 5)));
    stroke(0, 0, 100);
    point(random(0, 600), random (0, 600));
  }
  
  fill(0, 0, 0);
  circle(width/2, height/2, 450);
}

void draw()
{ 
  //some Circle:
  colorMode(HSB, 360, 100, 100);
  strokeWeight(5);
  stroke (huey, 75, bright);
  noFill();
  circle(width/2, height/2, radius2);
  
  //Neutrons:
  for (int j = 0; j < 3; j ++)
  {
    dewey = round(random (0, 1));
    
    strokeWeight(round (random (0, 20)));
    stroke(0, 0, 100);
    point (random(275, 325), random(275, 325));
    
    strokeWeight(round (random (20, 30)));
    stroke(0, 0, 0);
    point (random(275, 325), random(275, 325));
  }
  
  
  //Main QUAD:
  colorMode(HSB, 360, 100, 100);
  noStroke();
  fill(huey, 75, bright);
  rad1 = radians(grad1);
  rad2 = radians(grad2);
  quad_b = posY + (radius1 * (sin(rad1)));
  quad_a = posX + (radius1 * (cos(rad1)));
  quad_c = posX - (radius1 * (cos(rad2)));
  quad_d = posY - (radius1 * (sin(rad2)));
  
  //quad:
  quad(quad_a, quad_b, (quad_a - quad_radio), (quad_b - quad_radio), (quad_a - (quad_radio * 2)), quad_b, (quad_a - quad_radio), (quad_b + quad_radio));
  quad((quad_c + (quad_radio * 2)), quad_d, (quad_c + quad_radio), (quad_d + quad_radio), quad_c, quad_d, (quad_c + quad_radio), (quad_d - quad_radio));
  
  grad1 ++;
  grad2 ++;
  
  if (rev == false)
  {
    huey -= huey_inc;
    bright += bright_inc;
    radius2 ++;
  }
  
  if (rev == true)
  {
    huey += huey_inc;
    bright -= bright_inc;
    radius2 --;
  }
  
  if (huey == 161)
  {
    rev = true;
  }
  
  if (huey == 269)
  {
    rev = false;
  }
}

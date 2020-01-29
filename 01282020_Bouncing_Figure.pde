/*Basic Information:
Subject:Programacion Orientada a Objetos
Student: Hugo Alberto Gonzalez Uribe
Day: January 28th, 2020
Exercise: Create a program in which a figure bounces around all over the screen, much like those classic Windows Screensavers from the 90s-2000s.
*/

//global variables:
int r = round(random(255)), g = round(random(255)), b = round(random(255));
int choiceR, choiceB, choiceG;
int addup = 0;
int directionX = 1, directionY = 1;
float addup2 = 1.5;
float posX = random(500), posY = random(500);
float sizeX = 50, sizeY = 50;

//setup:
void setup()
{
  size (500, 500);
  
  if (r < 127)
{
  choiceR = 1;
}
else
{
  choiceR = -1;
}

if (g < 127)
{
  choiceG = 1;
}
else
{
  choiceG = -1;
}

if (b < 127)
{
  choiceB = 1;
}
else
{
  choiceB = -1;
}
}

//draw:
void draw()
{
  background (0);
  
  noStroke();
  fill(r + (addup * choiceR), g + (addup * choiceG), b + (addup * choiceB));
  rect(posX, posY, sizeX, sizeY);
  
  posX += (directionX * addup2);
  
  posY += (directionY * addup2);
  
  addup ++;
  
  if ((posX + sizeX) > (width))
  {
    directionX = -1;
    addup = 0;
    r = round(random(255));
    g = round(random(255));
    b = round(random(255));
  }
  
  if ((posX - sizeX) < (0 - sizeX))
  {
    directionX = 1;
    addup = 0;
    r = round(random(255));
    g = round(random(255));
    b = round(random(255));
  }
  
  if ((posY - sizeY) < (0 - sizeY))
  {
    directionY = 1;
    addup = 0;
    r = round(random(255));
    g = round(random(255));
    b = round(random(255));
  }
  
  if ((posY + sizeY) > (height))
  {
    directionY = -1;
    addup = 0;
    r = round(random(255));
    g = round(random(255));
    b = round(random(255));
  }
}

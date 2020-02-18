//The various Backgrounds:
//Variables WITHIN backgrounds
  float a = 0, b = 0;

//setup:

float atmchange = 0;
void setup()
{
  size (500, 500);
  
}

//main menu:
void draw()
{
  
  
  //Main Menu:
  /*noStroke();
  for(int j = 0; j < width; j += (width/100))
  {
    for (int i = 0; i < height; i += (height/100))
    {
      fill (255 - (1.5*i), 255 - (3*i), 255 - (i/1.5));
      rect(0 + j, height - i, width/100, height/100);
    }
  }*/
  //character select screen:
  noStroke();
  for(int j = 0; j < width; j += (width/100))
  {
    for (int i = 0; i < height; i += (height/100))
    {
      fill (235 - (i), 200 - (i), 255 - (i));
      rect(0 + j, height - i, width/100, height/100);
    }
  } 
  
  //Intructions
  
  //Victory Screen - BLUE EMPIRE:
  /* noStroke();
  for (int i = 0; i < width; i++)
  {
    //blue square
    fill (0 + b/2, 0 + b/2, 175 + b/2);
    rect (a, b, width/25, height/25);
    a += width/25;
    //yellow square
    fill(175 + b/2, 175 + b/2, 0 + b/2);
    rect(a, b, width/25, height/25);
    a += width/25;
  }
  a = 0;
  b += height/25; */
  
  
  //Victory Screen - RED EMPIRE:
  /* noStroke();
  for (int i = 0; i < width; i++)
  {
    //red square
    fill (175 - b/2, 0 - b/2, 0 - b/2);
    rect (a, b, width/25, height/25);
    a += width/25;
    //purple square
    fill(150 - b/2, 0, 190 - b/2);
    rect(a, b, width/25, height/25);
    a += width/25;
  }
  a = 0;
  b += height/25; */
  
  //Credits:
  /* noStroke();
  for(int j = 0; j < width; j += (width/100))
  {
    for (int i = 0; i < height; i += (height/100))
    {
      fill (105 - (1.5*i), 195 - (i/2), 195 - (i/2));
      rect(0 + j, height - i, width/100, height/100);
    }
  } */
  
}

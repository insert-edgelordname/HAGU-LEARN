//Library Import:
import processing.sound.*;

//Music Variables:
int playing = 0;

//Universal Variables
int atmchange = 0;
int choice_one = 0;
int choice_two = 0;
boolean playerone_choice = false;
boolean playertwo_choice = false;
int choices_so_far = 0;

boolean bankruptcy;

boolean playerone_turn;

int turns_so_far;
int turn_control;

//Player Variables:
float charone_speed;
float charone_health;
float charone_attack;

float chartwo_speed;
float chartwo_health;
float chartwo_attack;

float MoneyGeneral = 100000;
float Bank1;
float Bank2;

int command_count;

//FONTS:
//Titles:
PFont menu_texts;
PFont small_menutext;
PFont title_text;
PFont title2_text;
PFont title3_text;
PFont Sam_Max_title;
PFont And_title;
PFont Freelance_Police;

//Classes:

//Titles:

class Title
{
  //atributos:
  float PosX;
  float PosY;
  float R;
  float G;
  float B;
  float a;
  
  //metodos
  Title()
  {
    R = 0;
    G = 0;
    B = 0;
    PosX = 0;
    PosY = 0;
    a = 0;
  }
  
  Title(float R_, float G_, float B_, float a_, float PosX_, float PosY_)
  {
    R = R_;
    G = G_;
    B = B_;
    a = a_;
    PosX = PosX_;
    PosY = PosY_;
  }
  
  void display()
  {
        noStroke();
        fill(R,G,B, a);
        rect(PosX + 300, PosY + 77, 400, 3);
        
        //The lil spaceship
        triangle (PosX + 290, PosY + 78, PosX + 305 , PosY + 82, PosX + 305, PosY + 75);
        triangle (PosX + 313, PosY + 78, PosX + 305, PosY + 82, PosX + 305, PosY + 75);
        circle (PosX + 316, PosY + 78, 6);
        triangle (PosX + 320, PosY + 78, PosX + 326, PosY + 80, PosX + 326, PosY + 76);
        triangle (PosX+ 316, PosY + 78, PosX + 308, PosY + 70, PosX + 320, PosY + 70);
        triangle (PosX + 316, PosY + 80, PosX + 308, PosY + 88, PosX + 320, PosY + 88);
        triangle (PosX + 327, PosY + 88, PosX + 340, PosY + 95, PosX + 312, PosY + 88);
        triangle (PosX + 327, PosY + 70, PosX + 340, PosY + 63, PosX + 312, PosY + 70);
        
        textAlign(CENTER);
        fill (R, G, B, a);
        textFont (title_text);
        
        text ("R A P I D", PosX + width/2, PosY + 75);
        
        textAlign(CENTER);
        fill (255, 0, 0, a);
        textFont (title2_text);
        
        text ("R I V A L S", PosX + width/2, PosY + 125);
        
        textAlign(CENTER);
        fill (R, G, B, a);
        textFont (title2_text);
        
        text ("R I V A L S", PosX + width/2, PosY + 120);
        
        textAlign(CENTER);
        fill (R, G, B, a - 30);
        textFont (title3_text);
        
        text ("R  E  M  A  S  T  E  R", PosX + width/2, PosY + 150);
  }
}

class SAM_MAX_logo
{
  //Atributos
  float PosX;
  float PosY;
  float R;
  float G;
  float B;
  float a;
  
  //Metodos
  SAM_MAX_logo()
  {
    PosX = 0;
    PosY = 0;
    R = 0;
    G = 0;
    B = 0;
    a = 0;
  }
  
  SAM_MAX_logo(float R_, float G_, float B_, float a_, float PosX_, float PosY_)
  {
    R = R_;
    G = G_;
    B = B_;
    a = a_;
    PosX = PosX_;
    PosY = PosY_;
  }
  
  void display()
  {
    //Lower shade
    textAlign(CENTER);
    fill (190, 180, 0, a);
    textFont (Sam_Max_title);
    
    text ("S", PosX + width/2, PosY + 55);
    text ("A", PosX + 528, PosY + 55);
    text ("M", PosX + 560, PosY + 55);
    
    text ("M", PosX + 625, PosY + 55);
    text ("A", PosX + 659, PosY + 55);
    text ("X", PosX + 683, PosY + 55);
    
    textAlign(CENTER);
    fill (170, 150, 0, a);
    textFont (And_title);
    
    text ("&", PosX + 593, PosY + 50);
    
    textAlign(CENTER);
    fill (180, 165, 0, a);
    textFont (Freelance_Police);
    
    text("FREELANCE POLICE", PosX + 590, PosY + 78);
    
    //Upper title
    textAlign(CENTER);
    fill (R, G, B, a);
    textFont (Sam_Max_title);
    
    text ("S", PosX + width/2, PosY + 50);
    text ("A", PosX + 528, PosY + 50);
    text ("M", PosX + 560, PosY + 50);
    
    text ("M", PosX + 625, PosY + 50);
    text ("A", PosX + 659, PosY + 50);
    text ("X", PosX + 683, PosY + 50);
    
    textAlign(CENTER);
    fill (R, G, B, a);
    textFont (And_title);
    
    text ("&", PosX + 593, PosY + 45);
    
    textAlign(CENTER);
    fill (R, G, B, a);
    textFont (Freelance_Police);
    
    text("FREELANCE POLICE", PosX + 590, PosY + 73);
  }
}
///Backgrounds:
class Backgrounds0
{
  //atributos
  float a, b;
  float c, d;
  //metodos
  Backgrounds0()
  {
    a = 0;
    b = 0;
    c = 0;
    d = 0;
  }
  
  Backgrounds0(float a_, float b_)
  {
    a = a_;
    b = b_;
    c = a_;
    d = b_;
  }
  
  void MainMenu()
  {
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    
      //Main Menu:
      noStroke();
      
      fill(0);
      rect(0, 0, width, height/100);
      
      for(int j = 0; j < width; j += (width/100))
      {
        for (int i = 0; i < height; i += (height/100))
        {
          fill (255 - (1.5*i), 255 - (3*i), 255 - (i/1.5));
          rect(0 + j, height - i, width/100, height/100);
        }
      }
  }
  
  void CharSelect()
  {
    
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
  }
  
  void Battlefield()
  {
    background (0, 20, 30);
      //Battlefield
      noStroke();
      for (int j = 0; j < width; j += (width/100))
        {
          fill (10 + (15 * sin(a)), 10 + (5 * sin(a)), 40 + (15 * sin(a)), 400);
        for (int i = 0; i < height; i += (height/100))
        {
          
          rect (0 + j, height - i, width/100, height/100);
          
        }
          a+= 0.5;
          b+= 0.5;
      }
  }
  
  void BLUEWin()
  {
  
      //Victory Screen - BLUE EMPIRE:
      noStroke();
      for (int i = 0; i < width; i++)
      {
        //blue square
        fill (0 + d/2, 0 + d/2, 175 + d/2);
        rect (c, d, width/25, height/25);
        c += width/25;
        //yellow square
        fill(175 + d/2, 175 + d/2, 0 + d/2);
        rect(c, d, width/25, height/25);
        c += width/25;
      }
      c = 0;
      d += height/25;
  }
    
  void REDWin()
  {
      //Victory Screen - RED EMPIRE:
      noStroke();
      for (int i = 0; i < width; i++)
      {
        //red square
        fill (175 - d/2, 0 - d/2, 0 - d/2);
        rect (c, d, width/25, height/25);
        c += width/25;
        //purple square
        fill(150 - d/2, 0, 190 - d/2);
        rect(c, d, width/25, height/25);
        c += width/25;
      }
      c = 0;
      d += height/25;
  }
      
  void Credits()
  {
      //Credits:
      noStroke();
      
      fill(0);
      rect(0, 0, width, height/100);
      
      for(int j = 0; j < width; j += (width/100))
      {
        for (int i = 0; i < height; i += (height/100))
        {
          fill (105 - (1.5*i), 195 - (i/2), 195 - (i/2));
          rect(0 + j, height - i, width/100, height/100);
        }
      }
  }
  
  void Instructions()
  {
    //Instrucions:
    noStroke();
    
    fill(0, 50, 10);
      rect(0, 0, width, height/100);
    
      for(int j = 0; j < width; j += (width/100))
      {
        for (int i = 0; i < height; i += (height/100))
        {
          fill (120 - (1.5*i), 255 - (i/3), 255 - (i/2));
          rect(0 + j, height - i, width/100, height/100);
        }
      }
  }
}


///Characters:
class Spaceship
{
  //Atributos:
    float PosX;
    float PosY; 
    float direccion;
    float enbiggen;
    
    float speed;
    float speed_copy;
    float health;
    float health_copy;
    float attack;
    float attack_copy;
  
  //Metodos:
  Spaceship()
  {
    PosX = 0;
    PosY = 0; 
    direccion = 0;
    enbiggen = 0;
    
    speed = 0;
    health = 0;
    attack = 0;
    
  }
  
  Spaceship(float PosX_, float PosY_, float direccion_, float enbiggen_)
  {
    PosX = PosX_;
    PosY = PosY_;
    direccion = direccion_;
    enbiggen = enbiggen_;
  }
  
  void Kite()
  {   
    //Variables de cambio:
    pushMatrix();
    translate(PosX, PosY);
    rotate(direccion);
    scale(enbiggen);
    
    //Forma de la Nave
      noStroke();
     //Alas:
      fill (155, 0, 5);
      triangle (PosX - 58, PosY - 160 , PosX , PosY - 60 , PosX + 92 , PosY - 60);
      triangle (PosX - 58, PosY + 160 , PosX , PosY + 60 , PosX + 92 , PosY + 60);
      
      //Puentes:
      fill (200, 50, 20);
      triangle (PosX - 38 , PosY - 60 , PosX , PosY - 20 , PosX + 92 , PosY - 60);
      triangle (PosX - 38 , PosY + 60 , PosX , PosY + 20 , PosX + 92 , PosY + 60);
      
      //Cuerpo
      fill (100, 80, 70);
      circle (PosX , PosY , 50 );
      
      //Cola:
      fill (100, 50, 10);
      triangle (PosX - 20 , PosY , PosX - 40 , PosY - 20 , PosX - 40 , PosY + 20 );
      triangle (PosX - 82 , PosY , PosX - 40 , PosY - 20 , PosX - 40 , PosY + 20 );
      
      //Cockpit:
      fill (255, 0, 0);
      triangle (PosX + 20 , PosY , PosX + 50 , PosY - 30 , PosX + 50 , PosY + 30 );
      triangle (PosX + 97 , PosY , PosX + 50 , PosY - 30 , PosX + 50 , PosY + 30 );
      
      //Window:
      fill (100, 100, 150);
      triangle (PosX + 87 , PosY , PosX + 50 , PosY - 25 , PosX + 50 , PosY + 25 );
      fill (255, 0, 0);
      triangle (PosX + 67 , PosY , PosX + 50 , PosY - 25 , PosX + 50 , PosY + 25 );
      
      popMatrix();
      
      //Valores de Juego
      speed = 200;
      health = 135;
      attack = 135;
      
      speed_copy = speed;
      health_copy = health;
      attack_copy = attack;
  }
  
  void Nucleus()
  {
    //Variables de cambio:
    pushMatrix();
    translate(PosX, PosY);
    rotate(direccion);
    scale(enbiggen);
    
    //Forma de la Nave
    
    noStroke();
  
    //Nucleus
    
    fill (40, 0, 150);
    rect (PosX, PosY - 125, 100, 250);
    fill (40, 0, 120);
    rect (PosX - 200, PosY - 50, 200, 100);
    fill (200, 190, 0);
    rect (PosX + 75, PosY - 125, 25, 250);
    fill (50, 50, 75);
    triangle (PosX + 100, PosY - 50, PosX + 100, PosY + 50, PosX + 150, PosY);
    fill (50, 50, 75);
    triangle (PosX - 200, PosY - 50, PosX, PosY - 50, PosX, PosY - 125);
    triangle (PosX - 200, PosY + 50, PosX, PosY + 50, PosX, PosY + 125);
    
    //Wings
    fill(75, 75, 90);
    triangle (PosX - 100, PosY - 175, PosX - 70, PosY - 75, PosX, PosY - 75);
    triangle (PosX - 100, PosY + 175, PosX - 70, PosY + 75, PosX, PosY + 75);
    fill (80, 0, 255);
    rect (PosX - 125, PosY - 200, 100, 50);
    rect (PosX - 125, PosY + 150, 100, 50);
    fill (255, 255, 0);
    rect (PosX - 50, PosY - 200, 25, 50);
    rect (PosX - 50, PosY + 150, 25, 50);
    
    //Cockpit
    fill (100, 100, 150);
    rect (PosX - 160, PosY - 47.5, 35, 95);
    triangle (PosX - 160, PosY - 47, PosX - 125, PosY - 47, PosX - 125, PosY - 75);
    triangle (PosX - 160, PosY + 47, PosX - 125, PosY + 75, PosX - 125, PosY + 47);
    fill (40, 0, 200);
    rect (PosX - 125, PosY - 75, 150 , 150);
    fill (0, 200, 200);
    rect (PosX + 25, PosY - 50, 55, 100);
    triangle (PosX + 25, PosY - 75, PosX + 25, PosY - 50, PosX + 80, PosY - 50);
    triangle (PosX + 25, PosY + 75, PosX + 25, PosY + 50, PosX + 80, PosY + 50);
    
    popMatrix();
      
      //Valores de Juego
      speed = 75;
      health = 200;
      attack = 100;
      
      speed_copy = speed;
      health_copy = health;
      attack_copy = attack;
  }
  
  void Classic()
  {
    //Variables de cambio:
    pushMatrix();
    translate(PosX, PosY);
    rotate(direccion);
    scale(enbiggen);
    
    //Forma de la Nave
    
    noStroke();
    
    fill (125, 80, 80);
    triangle (PosX - 150, PosY - 75, PosX - 100, PosY - 25, PosX - 60, PosY - 50);
    triangle (PosX - 150, PosY - 75, PosX - 175, PosY - 75, PosX - 100, PosY - 25);
    triangle (PosX - 150, PosY + 75, PosX - 100, PosY + 25, PosX - 60, PosY + 50);
    triangle (PosX - 150, PosY + 75, PosX - 175, PosY + 75, PosX - 100, PosY + 25);
    
    fill (200, 190, 100);
    ellipse(PosX, PosY, 250, 125);
    
    fill(230, 50, 50);
    triangle (PosX + 75, PosY, PosX + 75, PosY + 51, PosX + 175, PosY);
    triangle (PosX + 75, PosY, PosX + 75, PosY - 51, PosX + 175, PosY);
    triangle (PosX + 75, PosY + 50, PosX + 140, PosY + 25, PosX + 174, PosY);
    triangle (PosX + 75, PosY - 50, PosX + 140, PosY - 25, PosX + 174, PosY);
    
    fill (200, 190, 100);
    triangle (PosX - 150, PosY - 25, PosX - 40, PosY - 25, PosX - 40, PosY - 60);
    triangle (PosX - 150, PosY + 25, PosX - 40, PosY + 25, PosX - 40, PosY - 60);
    rect (PosX - 150, PosY - 25, 110, 50);
    
    fill (155, 105, 105);
    triangle (PosX - 150, PosY - 25, PosX - 95, PosY - 25, PosX - 95, PosY - 42);
    triangle (PosX - 150, PosY + 25, PosX - 95, PosY - 25, PosX - 95, PosY + 42);
    rect (PosX - 150, PosY - 25, 55, 50);
    
    fill (155, 125, 125);
    rect (PosX - 185, PosY - 20, 35, 40);
    
    fill (155, 125, 125);
    circle (PosX, PosY, 90);
    
    fill (125, 125, 200);
    circle (PosX, PosY, 70);
      
    popMatrix();
      
      //Valores de Juego
      speed = 150;
      health = 150;
      attack = 150;
      
      speed_copy = speed;
      health_copy = health;
      attack_copy = attack;
  }
  
  void Dread()
  {
    //Variables de cambio:
    pushMatrix();
    translate(PosX, PosY);
    rotate(direccion);
    scale(enbiggen);
    
    //Forma de la Nave
    
    noStroke();
    
    //Dread
    
    //Wings:
    fill (205, 50, 50);
    triangle (PosX - 140, PosY, PosX - 100, PosY - 45, PosX - 50, PosY - 25);
    triangle (PosX - 140, PosY, PosX - 100, PosY + 45, PosX - 50, PosY + 25);
    
    fill (125, 55, 90);
    triangle (PosX - 130, PosY, PosX - 91, PosY - 45, PosX, PosY - 25);
    triangle (PosX - 130, PosY, PosX - 91, PosY + 45, PosX, PosY + 25);
    
    //middle tentacle:
    fill (200, 190, 90);
    triangle (PosX - 205, PosY, PosX - 195, PosY, PosX - 215, PosY - 40);
    triangle (PosX - 205, PosY, PosX - 195, PosY, PosX - 215, PosY + 40);
  
    fill (80, 33, 85);
    triangle (PosX, PosY - 22, PosX - 200, PosY, PosX, PosY);
    triangle (PosX, PosY + 22, PosX - 200, PosY, PosX, PosY);
    circle (PosX - 200, PosY, 20);
    
    
    //left tentacle:
    fill (70, 25, 73);
    triangle (PosX - 25, PosY - 35, PosX, PosY - 5, PosX - 125, PosY - 50);
    triangle (PosX - 125, PosY - 50, PosX - 100, PosY - 47, PosX - 180, PosY - 100);
    circle (PosX - 180, PosY - 100, 15);
    
    fill (200, 190, 90);
    triangle (PosX - 180, PosY - 104, PosX - 180, PosY - 96, PosX - 210, PosY - 110);
    
    //right tentacle:
    fill (70, 25, 73);
    triangle (PosX - 25, PosY + 35, PosX, PosY + 5, PosX - 125, PosY + 50);
    triangle (PosX - 125, PosY + 50, PosX - 100, PosY + 47, PosX - 180, PosY + 100);
    circle (PosX - 180, PosY + 100, 15);
    
    fill (200, 190, 90);
    triangle (PosX - 180, PosY + 104, PosX - 180, PosY + 96, PosX - 210, PosY + 110);
    
    //teeth
    fill (230, 210, 90);
    ///first row of teeth
    triangle (PosX + 20, PosY - 32, PosX + 25, PosY - 26, PosX + 44, PosY - 25);
    triangle (PosX + 30, PosY - 26, PosX + 28, PosY - 20, PosX + 48, PosY - 20);
    triangle (PosX + 30, PosY - 20, PosX + 33, PosY - 14, PosX + 48, PosY - 17);
    
    ///second row of teeth
    fill (250, 250, 100);
    triangle (PosX + 30, PosY - 15, PosX + 35, PosY - 9, PosX + 55, PosY - 11);
    triangle (PosX + 30, PosY - 10, PosX + 35, PosY + 3, PosX + 57, PosY - 6);
    triangle (PosX + 30, PosY - 5, PosX + 30, PosY + 5, PosX + 60, PosY);
    triangle (PosX + 30, PosY + 10, PosX + 35, PosY - 3, PosX + 57, PosY + 6);
    triangle (PosX + 30, PosY + 15, PosX + 35, PosY + 9, PosX + 55, PosY + 11);
    
    ///third row of teeth
    fill (230, 210, 90);
    triangle (PosX + 30, PosY + 20, PosX + 33, PosY + 14, PosX + 48, PosY + 17);
    triangle (PosX + 30, PosY + 26, PosX + 28, PosY + 20, PosX + 48, PosY + 20);
    triangle (PosX + 20, PosY + 32, PosX + 25, PosY + 26, PosX + 44, PosY + 25);
    
    //mouth gum
    fill (240, 100, 140);
    circle (PosX, PosY, 76);
    
    //head
    fill (120, 50, 125);
    arc (PosX + 5, PosY, 85, 85, QUARTER_PI, PI + HALF_PI + QUARTER_PI);
    circle (PosX + 5, PosY, 40);
    triangle (PosX + 35, PosY - 32, PosX + 20, PosY - 44, PosX - 10, PosY - 40);
    triangle (PosX + 35, PosY + 32, PosX + 20, PosY + 44, PosX - 10, PosY + 40);
    
    //horns
    triangle (PosX - 25, PosY - 20, PosX - 55, PosY - 40, PosX - 10, PosY + 25);
    triangle (PosX - 55, PosY - 40, PosX - 25, PosY - 60, PosX - 45, PosY - 35);
    circle (PosX - 45, PosY - 35, 20);
    triangle (PosX - 25, PosY + 20, PosX - 55, PosY + 40, PosX - 10, PosY - 25);
    triangle (PosX - 55, PosY + 40, PosX - 25, PosY + 60, PosX - 45, PosY + 35);
    circle (PosX - 45, PosY + 35, 20);
    triangle (PosX - 50, PosY, PosX - 80, PosY - 8, PosX, PosY - 20);
    triangle (PosX - 50, PosY, PosX - 80, PosY + 8, PosX, PosY + 20);
    
    //eyes:
    fill (245, 50, 50);
    circle (PosX - 45, PosY, 20);
    circle (PosX, PosY, 35);
    
    fill (250, 240, 0);
    ellipse (PosX - 45, PosY, 19, 5);
    ellipse (PosX, PosY, 33, 8);
    
    fill (50, 15, 15);
    ellipse (PosX - 45, PosY, 17, 4);
    ellipse (PosX, PosY, 30, 6);
    
    popMatrix();
      
      //Valores de Juego
      speed = 50;
      health = 100;
      attack = 200;
      
      speed_copy = speed;
      health_copy = health;
      attack_copy = attack;
  }
  
  void SAMnMAX()
  {
    //Variables de cambio:
    pushMatrix();
    translate(PosX, PosY);
    rotate(direccion);
    scale(enbiggen);
    
    //Forma de la Nave
    //Sam and Max: Freelance Police
    
    stroke(255);
    //Wheels:
    fill (3, 3, 3);
    rect (PosX - 60, PosY - 65, 40, 20);
    rect (PosX + 40, PosY - 65, 40, 20);
    rect (PosX - 60, PosY + 45, 40, 20);
    rect (PosX + 40, PosY + 45, 40, 20);
    
    noStroke();
    //Light bulbs front:
    fill (180, 180, 60);
    circle (PosX + 100, PosY - 57, 10);
    circle (PosX + 100, PosY + 56, 10);
    fill (240, 240, 0);
    circle (PosX + 105, PosY - 67, 13);
    circle (PosX + 105, PosY + 66, 13);
    
    stroke(255);
    //Base BodPosY:
    fill (0, 0, 20);
    rect (PosX - 100, PosY - 50, 200, 50);
    rect (PosX - 100, PosY, 200, 50);
    
    //Lights front
    fill (0, 0, 20);
    triangle (PosX + 100, PosY - 50, PosX + 105, PosY - 75, PosX + 50, PosY - 50);
    triangle (PosX + 100, PosY + 50, PosX + 105, PosY + 75, PosX + 50, PosY + 50);
    triangle (PosX + 100, PosY - 50, PosX + 120, PosY, PosX + 100, PosY + 50);
    
    //Lights Back
    fill (0, 0, 20);
    triangle (PosX - 90, PosY - 50, PosX - 90, PosY - 75, PosX - 15, PosY - 50);
    triangle (PosX - 90, PosY - 50, PosX - 90, PosY - 75, PosX - 100, PosY - 50);
    triangle (PosX - 90, PosY + 75, PosX - 90, PosY + 50, PosX - 15, PosY + 50);
    triangle (PosX - 90, PosY + 50, PosX - 90, PosY + 75, PosX - 100, PosY + 50);
    
    noStroke();
    //Doors
    fill (150, 150, 155);
    rect (PosX - 25, PosY - 55, 75, 20);
    rect (PosX - 25, PosY + 35, 75, 20);
    
    //Trunk
    fill (5, 0, 40);
    rect (PosX - 100, PosY - 35, 75, 70);
    
    //Front gUARD????
    fill (80, 80, 80);
    triangle (PosX + 100, PosY + 50, PosX + 120, PosY, PosX + 107, PosY + 50);
    triangle (PosX + 127, PosY, PosX + 120, PosY, PosX + 107, PosY + 50);
    
    triangle (PosX + 100, PosY - 50, PosX + 120, PosY, PosX + 107, PosY - 50);
    triangle (PosX + 127, PosY, PosX + 120, PosY, PosX + 107, PosY - 50);
    
    //Front
    fill (5, 0, 40);
    triangle (PosX + 50, PosY - 35, PosX + 100, PosY - 50, PosX + 50, PosY + 35);
    triangle (PosX + 50, PosY + 35, PosX + 100, PosY + 50, PosX + 100, PosY - 50);
    triangle (PosX + 100, PosY - 50, PosX + 100, PosY + 50, PosX + 120, PosY);
    
    //Spoilers Above
    fill (10, 0, 55);
    triangle (PosX - 70, PosY - 20, PosX - 70, PosY - 50, PosX - 145, PosY - 45);
    triangle (PosX - 70, PosY + 20, PosX - 70, PosY + 50, PosX - 145, PosY + 45);
    
    //Spoilers Below
    triangle (PosX - 70, PosY - 20, PosX - 70, PosY - 50, PosX - 50, PosY - 35);
    triangle (PosX - 70, PosY + 20, PosX - 70, PosY + 50, PosX - 50, PosY + 35);
    
    //Window:
    fill (70, 175, 180);
    rect (PosX - 47, PosY - 37, 20, 74);
    rect (PosX + 49, PosY - 37, 20, 74);
    
    //Ceiling 
    fill (255, 255, 255);
    rect (PosX - 27, PosY - 37, 79, 74);
    
    //Police Sirens:
    fill (100, 100, 100);
    rect (PosX - 5, PosY - 2, 10, 4);
    fill (150, 0, 0);
    rect (PosX - 10, PosY - 22, 20, 20);
    fill (20, 0, 150);
    rect (PosX - 10, PosY + 2, 20, 20);
    
    popMatrix();
    
    //Valores de Juego
      speed = 125;
      health = 175;
      attack = 150;
      
      speed_copy = speed;
      health_copy = health;
      attack_copy = attack;
  }
}

class MenuRectangle
{
  //atributos:
  float r, g, b;
  float PosX, PosY;
  float w, h;
  int use;
  //Metodos:
  MenuRectangle()
  {
    r = 0;
    g = 0;
    b = 0;
    
    PosX = 0;
    PosY = 0;
    
    w = 0;
    h = 0;
    
    use = 0;
  }
  
  MenuRectangle(float r_, float g_, float b_, float PosX_, float PosY_, float w_, float h_, int use_)
  {
    r = r_;
    g = g_;
    b = b_;
    
    PosX = PosX_;
    PosY = PosY_;
    
    w = w_;
    h = h_;
    
    use = use_;
  }
  
  void display()
  {
    noStroke();
    fill(r, g, b);
    rect (PosX, PosY, w, h);
  }
  
  void click()
  {
    switch (use)
    {
      case 0:
      atmchange = 0;
      break;
      
      case 1:
      atmchange = 1;
      break;
      
      case 2:
      atmchange = 2;
      break;
      
      case 3:
      atmchange = 5;
      break;
      
      case 4:
      atmchange = 6;
      break;
      
      case 5:
        switch (choices_so_far)
        { 
          case 1:
          choice_one = 0;
          playerone_choice = false;
          break;
          
          case 2:
          choice_two = 0;
          playertwo_choice = false;
          break;
        }
      break;
      
      case 6:
      playerone_choice = true;
      break;
      
      case 7:
      playertwo_choice = true;
      break;
      
    }
  }
}

class Battle_Menu
{
  //Atributes
  float PosX;
  float PosY;
  float R;
  float G;
  float B;
  float R2;
  float G2;
  float B2;
  
  //Methods:
  Battle_Menu()
  {
    PosX = 0;
    PosY = 0;
    R = 0;
    G = 0;
    B = 0;
    R2 = 0;
    G2 = 0;
    B2 = 0;
  }
  
  Battle_Menu(float R_, float G_, float B_, float R2_, float G2_, float B2_, float PosX_, float PosY_)
  {
    PosX = PosX_;
    PosY = PosY_;
    R = R_;
    G = G_;
    B = B_;
    R2 = R2_;
    G2 = G2_;
    B2 = B2_;
  }
  
  void display()
  {
    noStroke();
    fill(R, G, B);
    rect (PosX, PosY, 500, 100);
    
    noStroke();
    fill(R2, G2, B2);
    rect (PosX + 50, PosY + 10, 100, 80);
    
    rect (PosX + 200, PosY + 10, 100, 80);
    
    rect (PosX + 350, PosY + 10, 100, 80);
  }
}

class Gods_Eye
{
  void attacks1()
  {
    switch(choice_one)
    {
      //Kite:
      case 1:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank1 -= 3500;
        charone_attack += 10;
        break;
        
        //Reg Attack:
        case 2:
        chartwo_health -= 7 * (charone_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank1 -= 10000;
        charone_health += 15;
        break;
      }
      break;
      
      //Nucleus:
      case 2:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank1 -= 10000;
        charone_attack += 13;
        chartwo_attack -= 5;
        break;
        
        //Reg Attack:
        case 2:
        chartwo_health -= 5 * (charone_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank1 += 10000;
        charone_health -= 7;
        break;
      }
      break;
      
      //Classic:
      case 3:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank1 -= 10000;
        charone_health += 5 * (charone_speed/100);
        break;
        
        //Reg Attack:
        case 2:
        chartwo_health -= 6 *(charone_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank1 -= 10000;
        charone_speed += 2.5 * (charone_health/100);
        break;
      }
      break;
      
      //Dread:
      case 4:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank1 -= 10000;
        charone_attack += 5;
        break;
        
        //Reg Attack:
        case 2:
        Bank1 -= 50;
        chartwo_health -= 10 * (charone_attack/100);
        charone_health += 4 * (charone_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank1 -= 10000;
        charone_attack -= 7;
        charone_health += 5;
        break;
      }
      break;
      
      //Sam&Max:
      case 5:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank1 -= 9000;
        charone_health -= 15;
        chartwo_health -= round(random(10, 20));
        chartwo_attack -= round(random(1, 15));
        chartwo_speed -= round(random(1, 15));
        break;
        
        //Reg Attack:
        case 2:
        chartwo_health -= 7 * (charone_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank1 -= 10500;
        charone_attack += round(random(5, 10));
        chartwo_health -= 10 * (charone_attack/100);
        charone_health += round(random(5, 20));
        break;
      }
      break;
    }
  }
  
  void attacks2()
  {
    switch(choice_two)
    {
      //Kite:
      case 1:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank2 -= 3500;
        chartwo_attack += 10;
        break;
        
        //Reg Attack:
        case 2:
        charone_health -= 7 * (chartwo_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank2 -= 10000;
        chartwo_health += 15;
        break;
      }
      break;
      
      //Nucleus:
      case 2:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank2 -= 10000;
        chartwo_attack += 13;
        charone_attack -= 5;
        break;
        
        //Reg Attack:
        case 2:
        charone_health -= 5 * (chartwo_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank2 += 10000;
        charone_health -= 7;
        break;
      }
      break;
      
      //Classic:
      case 3:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank2 -= 10000;
        chartwo_health += 5 * (chartwo_speed/100);
        break;
        
        //Reg Attack:
        case 2:
        charone_health -= 6 *(chartwo_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank2 -= 10000;
        chartwo_speed += 2.5 * (chartwo_health/100);
        break;
      }
      break;
      
      //Dread:
      case 4:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank2 -= 10000;
        chartwo_attack += 5;
        break;
        
        //Reg Attack:
        case 2:
        Bank2 -= 50;
        charone_health -= 10 * (chartwo_attack/100);
        chartwo_health += 4 * (chartwo_attack/200);
        break;
        
        //Special Two:
        case 3:
        Bank2 -= 10000;
        chartwo_attack -= 7;
        chartwo_health += 5;
        break;
      }
      break;
      
      //Sam&Max:
      case 5:
      switch(command_count)
      {
        //Special One:
        case 1:
        Bank2 -= 9000;
        chartwo_health -= 15;
        charone_health -= round(random(10, 20));
        charone_attack -= round(random(1, 15));
        charone_speed -= round(random(1, 15));
        break;
        
        //Reg Attack:
        case 2:
        charone_health -= 7 * (charone_attack/100);
        break;
        
        //Special Two:
        case 3:
        Bank2 -= 10500;
        chartwo_attack += round(random(5, 10));
        charone_health -= 10 * (charone_attack/100);
        chartwo_health += round(random(5, 20));
        break;
      }
      break;
    }
  }
  
  void Out1()
  {
    scene.BLUEWin();
    atmchange = 3;
  }
  
  void Out2()
  {
    scene.REDWin();
    atmchange = 4;
  }
}


//Universal Classes Declaration:
  Backgrounds0 scene;
  
//Title objects
Title mm_title;
Title charsel_title;
Title BlueWin_title;
Title RedWin_title;

SAM_MAX_logo Blue_SAM_MAX;
SAM_MAX_logo Red_SAM_MAX;
SAM_MAX_logo charsel_SAM_MAX;
  
//Preview Classes
  Spaceship kite_char;
  Spaceship nucleus_char;
  Spaceship classic_char;
  Spaceship dread_char;
  Spaceship police_char;
  
//Player Classes
  Spaceship player_one;
  Spaceship player_two;
  
  Gods_Eye All_seeing;
  
//Menu Class:
  MenuRectangle mm_play;
  MenuRectangle mm_instruct;
  MenuRectangle mm_credits;
  MenuRectangle uni_back;
  MenuRectangle undo_char;
  MenuRectangle mm_ready;
  
  MenuRectangle charone_confirm;
  MenuRectangle chartwo_confirm;
  
  Spaceship charselect_one;
  Spaceship charselect_two;
  
//Victory Objects:
  Spaceship victory_one;
  Spaceship victory_two;

//SoundFiles:
SoundFile Kite;
SoundFile Nucleus;
SoundFile Classic;
SoundFile Dread;
SoundFile SamMax;
SoundFile Menus;

SoundFile confirm1;
SoundFile confirm2;
SoundFile back;
SoundFile attack;
SoundFile special1;
SoundFile special2;

SoundFile READY;

SoundFile Victory;
SoundFile SM_Victory;

void setup()
{
  ///window size
  size (1000, 650);
  
  //Fonts:
  menu_texts = loadFont("CopperplateGothic-Bold-30.vlw");
  small_menutext = loadFont ("Consolas-20.vlw");
  title_text = loadFont ("CopperplateGothic-Bold-50.vlw");
  title2_text = loadFont ("CopperplateGothic-Bold-60.vlw");
  title3_text = loadFont ("CopperplateGothic-Light-20.vlw");
  Sam_Max_title = loadFont ("TwCenMT-CondensedExtraBold-66.vlw");
  And_title = loadFont ("TwCenMT-CondensedExtraBold-48.vlw");
  Freelance_Police = loadFont ("TwCenMT-CondensedBold-36.vlw");
  
  //Logos:
  mm_title = new Title (255, 255, 255, 500, 0, 0);
  charsel_title = new Title (255, 255, 255, 90, 0, 200);
  BlueWin_title = new Title (0, 0, 0, 500, 250, 500);
  RedWin_title = new Title (255, 255, 255, 500, 250, 500);
  
  Blue_SAM_MAX = new SAM_MAX_logo (0, 0, 0, 500, -450, 10);
  Red_SAM_MAX = new SAM_MAX_logo (255, 255, 255, 500, -450, 10);
  charsel_SAM_MAX = new SAM_MAX_logo (255, 255, 255, 90, -100, 250);
  
  //Menus Object Setup
  mm_play = new MenuRectangle(100, 30, 255, 220, 200, 540, 65, 1);
  mm_instruct = new MenuRectangle(100, 30, 255, 220, 295, 540, 65, 3);
  mm_credits = new MenuRectangle(100, 30, 255, 220, 390, 540, 65, 4);
  uni_back = new MenuRectangle (220, 10, 170, 75, 575, 100, 50, 0);
  undo_char = new MenuRectangle (200, 10, 0, 400, 500, 200, 75, 5);
  mm_ready = new MenuRectangle (200, 180, 1, 400, 420, 200, 75, 2);
  
  charselect_one = new Spaceship (125, 265, 0, 0.7);
  charselect_two = new Spaceship (2625, 1500, PI, 0.7);
  
  charone_confirm = new MenuRectangle (255, 0, 0, 350, 420, 45, 75, 6);
  chartwo_confirm = new MenuRectangle (0, 0, 255, 605, 420, 45, 75, 7);
  
  //Object Setup:
  scene = new Backgrounds0 (0,0);
  kite_char = new Spaceship (50, 90, 0, 0.5);
  nucleus_char = new Spaceship (200, 90, 0, 0.5);
  classic_char = new Spaceship (400, 90, 0, 0.5);
  dread_char = new Spaceship (600, 90, 0, 0.5);
  police_char = new Spaceship (320, 220, 0, 0.5);
  
  //player objects:
  player_one = new Spaceship (110, 170, 0, 0.8); 
  player_two = new Spaceship (3950, 1530, PI, 0.8);
  
  All_seeing = new Gods_Eye ();
  
  //Victory Screen Objects
  victory_one = new Spaceship (- 5200, -3000, PI, 1.1);
  victory_two = new Spaceship (- 5200, - 3000, PI, 1.1);
  
  //SoundFiles:
  Kite = new SoundFile (this, "Kite_battletheme.mp3");
  Nucleus = new SoundFile (this, "Nucleus_battletheme.mp3");
  Classic = new SoundFile (this, "Classic_theme.mp3");
  Dread = new SoundFile (this, "Dread_battletheme.mp3");
  SamMax = new SoundFile(this, "Sam&Max_battletheme.mp3");
  
  Menus = new SoundFile (this, "Menus_theme.mp3");
  
  Victory = new SoundFile (this, "victorynormal.mp3");
  SM_Victory = new SoundFile (this, "SM victory.mp3");
  
  //SoundFiles Minors:
  confirm1 = new SoundFile (this, "confirmation 1.wav");
  confirm2 = new SoundFile (this, "confirmation 2.wav");
  back = new SoundFile (this, "denied 1.wav");
  attack = new SoundFile (this, "attack 1.wav");
  special1 = new SoundFile (this, "special 1.wav");
  special2 = new SoundFile (this, "special 2.wav");
  
  READY = new SoundFile (this, "READY.wav");
}

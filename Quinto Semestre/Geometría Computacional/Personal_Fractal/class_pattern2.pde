class pattern2
{
  //Vectors
  PVector Pos = new PVector(0, 0);
  PVector vect1 = new PVector(0, 0);
  PVector vect2 = new PVector(0, 0);
  PVector vect3 = new PVector(0, 0);
  PVector vect4 = new PVector(0, 0);
  
  //Cycle
  int repeat = 0;
  
  //Movement
  boolean flag = true;
  float side = 0;
  float special = 0;
  float separation = 0;
  
  //Color:
  int huey = 0;
  int sam = 0;
  int vincent = 0;
  int alph = 0;
  
  //Color Arrays:
  
  int [] hugo = new int[2];
  int susana = 0;
  int victor = 0;
  int andrew = 0;
  
  //Class Array
  pattern2 [] p = new pattern2[4];
  
  //Methods:
  pattern2(float posx, float posy, float side_, int repeat_, int huey_, int sam_, int vincent_, int alph_)
  {
    //Position
   Pos.x = posx;
   Pos.y = posy;
   side = side_;
   
   //Cycle
   repeat = repeat_;
   
   //Movement
   separation = side_;
   special = separation;
   
   //Color
   huey = huey_;
   sam = sam_;
   vincent = vincent_;
   alph = alph_;
   
   //Vectors
   vect1 = Pos.copy();
   vect2 = Pos.copy();
   vect3 = Pos.copy();
   vect4 = Pos.copy();
   
   //Mini-Class Constructors
   if (repeat > 0)
   {
       //Color Arrays:
       hugo[0] = huey_ - 15;
       hugo[1] = huey_ + 15;
       
       susana = sam_ - 5;
       
       victor = vincent_ + 5;
       
       andrew = alph_ - 5;
       
       //Color Correction:
       if (hugo[0] < 360) 
       {
         hugo[0] += 360;
       }
       if (hugo[1] > 360)
       {
         hugo[1] -= 360;
       }
       
       if (susana < 0)
       {
         susana += 100;
       }
       
       if (victor > 100)
       {
         victor -= 100;
       }
       
       if (andrew < 100)
       {
         andrew += 75;
       }
       
     //The Classes from Team Fortress 2.... this is a joke, they are just classes
     p[0] = new pattern2(vect1.x, vect1.y, side/2, repeat - 1, hugo[0], susana, victor, andrew);
     p[1] = new pattern2(vect2.x, vect2.y, side/2, repeat - 1, hugo[0], susana, victor, andrew);
     p[2] = new pattern2(vect3.x, vect3.y, side/2, repeat - 1, hugo[1], susana, victor, andrew);
     p[3] = new pattern2(vect4.x, vect4.y, side/2, repeat - 1, hugo[1], susana, victor, andrew);
   }
  }
  
  //Functions:
  void display()
  {
    
    colorMode(HSB, 360, 100, 100, 100);
    if (repeat > 0)
    {
      noStroke();
      fill(huey, sam, vincent, alph);
      
      pushMatrix();
      translate((0 + separation), 0);
      rombus(vect1.x, vect1.y, side/1.5);
      p[0].display();
      popMatrix();
      
      pushMatrix();
      translate((0 - separation), 0);
      rombus(vect2.x, vect2.y, side/1.5);
      p[1].display();
      popMatrix();
      
      pushMatrix();
      translate(0, (0 + separation));
      rombus(vect3.x, vect3.y, side/1.5);
      p[2].display();
      popMatrix();
      
      pushMatrix();
      translate(0, (0 - separation));
      rombus(vect4.x, vect4.y, side/1.5);
      p[3].display();
      popMatrix();
      
      if (flag == true)
      {
        separation --;
      }
      else
      {
        separation ++;
      }
      
      if (separation <= 0)
      {
        flag = false;
      }
      else if (separation >= special)
      {
        flag = true;
      }
    }
  }
  
  void rombus(float Posx, float Posy, float side)
  {
    quad(Posx - side, Posy, Posx, Posy - side, Posx + side, Posy, Posx, Posy + side);
  }
}

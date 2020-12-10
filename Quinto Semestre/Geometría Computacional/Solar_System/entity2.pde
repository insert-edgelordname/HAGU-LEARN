class entity2
{
  //Atributes
  PVector Pos;
  float dist;
  float sp;
  boolean dir;
  float radio;
  int huey;
  int sewey;
  int louie;
  
  //Variable Transition Method
  entity2(float x, float y, float dist_, float sp_, boolean dir_, float radio_, int huey_, int sewey_, int louie_)
  {
    Pos = new PVector(x, y);
    dist = dist_;
    sp = sp_;
    dir = dir_;
    radio = radio_;
    huey = huey_;
    sewey = sewey_;
    louie = louie_;
    
  }
  
  //Methods
  
  void display()
  {
    colorMode(HSB, 360, 100, 100);
    
    pushMatrix();
      float theta = millis() / 1000.0;
      float direction;
      if (dir == true)
      {
        direction = 1;
      }
      else
      {
        direction = -1;
      }
      rotate( (theta * sp) * direction );
      translate(Pos.x + dist, Pos.y);
      
      fill(huey, sewey, louie);
      circle(0, 0, radio);
    popMatrix();
  }
}

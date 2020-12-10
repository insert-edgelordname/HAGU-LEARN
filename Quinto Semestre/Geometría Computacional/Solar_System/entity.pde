class entity
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
  int moons;
  
  
  //Variable Transition Method
  entity(float x, float y, float dist_, float sp_, boolean dir_, float radio_, int huey_, int sewey_, int louie_, int moons_)
  {
    Pos = new PVector(x, y);
    dist = dist_;
    sp = sp_;
    dir = dir_;
    radio = radio_;
    huey = huey_;
    sewey = sewey_;
    louie = louie_;
    moons = moons_;
  }
  
  //Methods
  
  void display()
  {
    colorMode(HSB, 360, 100, 100);
    
    //entity2 startup
    entity2 [] satell = new entity2[moons];
    
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
    
    for (int k = 0; k < moons; k++)
    {
      satell[k] = new entity2(Pos.x + dist, Pos.y, 30, 0.5, true, 5, 100, 0, 50);
    }
  }
}

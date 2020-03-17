class Bomb2
{
  //Atributes:
  Body body;
  float r = 120;
  float sr = 20;
  float m = 5;
  float x;
  float y;
  
  //Timers:
  int timer1 = millis();
  int timer2 = millis() + 3000;
  
  boolean explode = false;
  
  //Methods:
  Bomb2 (float x_, float y_)
  {
    x = x_;
    y = y_;
    
    //PVectors:
    
    
    //Define Body:
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    
    //Position Setting:
    bd.position = Ungravity.coordPixelsToWorld(x,y);
    body = Ungravity.world.createBody(bd);
    
    //Make the Body's shape a circle:
    CircleShape cs = new CircleShape();
    cs.m_radius = Ungravity.scalarPixelsToWorld(sr/4);
    
    //Fixture Definition:
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    
    fd.density = 2;
    fd.friction = 0.4;
    fd.restitution = 0.5;
    
    body.createFixture(fd);
    
    body.setLinearVelocity(new Vec2(0,0));
    body.setAngularVelocity(0);
  }
  
  void Forceful(Vec2 v)
  {
    body.applyForce(v, Ungravity.getBodyPixelCoord(body));
  }
  
  void display()
  {
    //Body Position:
    Vec2 posit = Ungravity.getBodyPixelCoord(body);
    //Body's angle:
    float alp = body.getAngle();
    
    pushMatrix();
    translate (posit.x, posit.y);
    rotate(alp);
    noStroke();
    fill(0, 20, 35);
    rect(-4, -15, 8, 10);
    fill(0, 50, 70);
    ellipse(0, 0, sr, sr);
    stroke(0, 0, 0);
    noFill();
    ellipse(0, 0, r, r);
    
    popMatrix();
  }
  void timer()
  {
    if (timer1 >= timer2)
    {
      explode = true;
    }
    else explode = false;
    
    timer1 = millis();
  }
  
  void killBody()
  {
    Ungravity.destroyBody(body);
  }
}

class Implosion1
{
  //Attributes
  Body body;
  float r = 120;
  float sr = 20;
  float m = 100;
  float G = -50;
  
  //Countdown Variables:
  int timer1 = millis();
  int timer2 = millis() + 3000;
  int timer3 = millis() + 5000;
  
  boolean dispersion = false;
  boolean destruct = false;
  
  //Methods:
  Implosion1(float x, float y)
  {
    //Define Body:
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    
    //Position Settings:
    bd.position = Ungravity.coordPixelsToWorld(x,y);
    body = Ungravity.world.createBody(bd);
    
    //Make the collision shape a Circle:
    CircleShape cs = new CircleShape();
    cs.m_radius = Ungravity.scalarPixelsToWorld(sr/32);
    
    //Create Fixture:
    body.createFixture(cs,1);
  }
  
  Vec2 attract(Bomb2 g)
  {
    //clone()????
    Vec2 pos = Ungravity.coordPixelsToWorld(g.x, g.y);
    Vec2 moverPos = body.getWorldCenter();
    
    //Vector pointing from Mover to Attractor:
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    
    //Keep the force within bounds:
    distance = constrain(distance, 10, 10);
    force.normalize();
    
    //THE FORMULA:
    float strength = (G * m * g.m) / (distance * distance);
    force.mulLocal(strength);
    return force;
  }
  
  Vec2 attract(Bomb1 p)
  {
    //clone()????
    Vec2 pos = Ungravity.coordPixelsToWorld(p.x, p.y);
    Vec2 moverPos = body.getWorldCenter();
    
    //Vector pointing from Mover to Attractor:
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    
    //Keep the force within bounds:
    distance = constrain(distance, 10, 10);
    force.normalize();
    
    //THE FORMULA:
    float strength = (G * m * p.m) / (distance * distance);
    force.mulLocal(strength);
    return force;
  }
  
  void timer()
  {
    //This timer will define when the explosion will appear:
    if (timer1 >= timer2)
    {
      dispersion = true;
    }
    else dispersion = false;
    
    //This timer will define how long the explosion will remain before the body being destroyed:
    if (timer1 >= timer3)
    {
      destruct = true;
    }
    else destruct = false;
    
    //Timer Iteration:
    timer1 = millis();
  }
  
  void display()
  {
    //Object Screen Position:
    Vec2 posit = Ungravity.getBodyPixelCoord(body);
    
    //Rotation:
    float alp = body.getAngle();
    
    //The actual Display:
    pushMatrix();
    translate(posit.x, posit.y);
    rotate(alp);
    rectMode(CORNER);
    stroke(255, 255, 255);
    fill(0, 255, 255);
    ellipse(0, 0, r, r);
    popMatrix();
  }
  
  void killBody()
  {
    Ungravity.destroyBody(body);
  }
}

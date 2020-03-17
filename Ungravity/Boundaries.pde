class Boundary
{
  //Atributes:
  Body body;
  float x;
  float y;
  float w;
  float h;
  
  //Methods:
  
  Boundary (float x_, float y_, float w_, float h_)
  {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    
    //Polygon Definition
    PolygonShape sd = new PolygonShape();
    
    //box2d coords:
    float box2dW = Ungravity.scalarPixelsToWorld(w);
    float box2dH = Ungravity.scalarPixelsToWorld(h);
    
    //We are just a box:
    sd.setAsBox(box2dW, box2dH);
    
    //SUMMON THE BODY:
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(Ungravity.coordPixelsToWorld(x, y));
    body = Ungravity.createBody(bd);
    
    //FIXTURE
    body.createFixture(sd,1);
  }
  
  void display()
  {
    fill (0);
    noStroke();
    rectMode(CENTER);
    rect (x, y, w, h);
  }
}

//Ungravity v.2

//Library Information:
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

//World Definition:
Box2DProcessing Ungravity;

//Global Variables:

//Global PVectors:

//object definition:

//Array Lists:
//Global:
ArrayList <Boundary> boundaries;
//Bomb1:

//Bomb2:
ArrayList <Bomb1> defuse1;
ArrayList <Bomb2> defuse2;
ArrayList <Explosion1> explode;
ArrayList <Implosion1> implode;

void setup()
{
  size (650, 650);
  
  //World Startup:
  Ungravity = new Box2DProcessing(this);
  Ungravity.createWorld();
  
  Ungravity.setGravity(0,0);
  
  //Array List Startup:
  
  defuse2 = new ArrayList <Bomb2>();
  implode = new ArrayList <Implosion1>();
  
  defuse1 = new ArrayList <Bomb1>();
  explode = new ArrayList <Explosion1>();
  
  
  boundaries = new ArrayList<Boundary>();
  
  //G. PVector Startup:
  
  //Object definition:
  boundaries.add(new Boundary (width/2, -20, width, 40));
  boundaries.add(new Boundary (width/2, height + 20, width, 40));
  boundaries.add(new Boundary (-20, 0, 40, height));
  boundaries.add(new Boundary (width + 20, 0, 40, height));
  
}

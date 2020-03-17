void draw()
{
  background (220, 255, 255);
  
  Ungravity.step();
  for (Boundary wall : boundaries)
  {
    wall.display();
  }
  
  for (Implosion1 imp : implode)
  {
    for (Bomb2 g : defuse2)
    {
      if (imp.dispersion == true)
      {
        Vec2 force = imp.attract(g);
        g.Forceful(force);
      }
    }
    
    for (Bomb1 p : defuse1)
    {
      if (imp.dispersion == true)
      {
        Vec2 force = imp.attract(p);
        p.Forceful(force);
      }
    }
  }
  
  for (Explosion1 exp : explode)
  {
    for (Bomb2 g : defuse2)
    {
      if (exp.dispersion == true)
      {
        Vec2 turce = exp.pull(g);
        g.Forceful(turce);
      }
    }
    
    for (Bomb1 p : defuse1)
    {
      if (exp.dispersion == true)
      {
        Vec2 turce = exp.pull(p);
        p.Forceful(turce);
      }
    }
  }
  
  //Displays
  for (Bomb1 p : defuse1)
  {
    p.display();
    p.timer();
  }
  
  for (Explosion1 exp : explode)
  {
    exp.timer();
    if (exp.dispersion == true)
    {
      exp.display();
    }
  }
  
  for (Bomb2 g : defuse2)
  {
    g.display();
    g.timer();
  }
  
  for (Implosion1 imp : implode)
  {
    imp.timer();
    if (imp.dispersion == true)
    {
      imp.display();
    }
    
  }
  
  //Object Destruction:
  //Bomb1 Destruction:
  for (int i = defuse1.size() - 1; i >= 0; i --)
  {
    Bomb1 p = defuse1.get(i);
    if (p.explode == true)
    {
      p.killBody();
      defuse1.remove(i);
    }
  }
  
  for (int i = explode.size() - 1; i >= 0; i --)
  {
    Explosion1 exp = explode.get(i);
    if (exp.destruct == true)
    {
      exp.killBody();
      explode.remove(i);
    }
  }
  
  //Bomb2 Destruction:
  for (int i = defuse2.size() - 1; i >= 0; i --)
  {
    Bomb2 g = defuse2.get(i);
    if (g.explode == true)
    {
      g.killBody();
      defuse2.remove(i);
    }
  }
  
  for (int i = implode.size() - 1; i >= 0; i --)
  {
    Implosion1 imp = implode.get(i);
    if (imp.destruct == true)
    {
      imp.killBody();
      implode.remove(i);
    }
  }
}

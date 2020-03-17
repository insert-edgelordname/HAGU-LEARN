void mouseClicked()
{
  if (mouseButton == LEFT)
  {
    Bomb2 g = new Bomb2(mouseX, mouseY);
    defuse2.add(g);
    
    Implosion1 imp = new Implosion1(g.x, g.y);
    implode.add(imp);
  }
  
  if (mouseButton == RIGHT)
  {
    Bomb1 p = new Bomb1(mouseX, mouseY);
    defuse1.add(p);
    
    Explosion1 exp = new Explosion1 (p.x, p.y);
    explode.add(exp);
  }
}

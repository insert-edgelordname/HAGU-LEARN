class bridge
{
  //Attributes:
    //Time:
    float time = 0;
    float t_inc = 0.001;
    boolean time_flag = false;
    
    //Vectors:
    PVector [] pos = new PVector[2];
    PVector [] p = new PVector[7];
    PVector [] q = new PVector[6];
    PVector [] b = new PVector[5];
    PVector [] d = new PVector[4];
    PVector [] m = new PVector[3];
    PVector [] n = new PVector[2];
    PVector r = new PVector(0, 0);
    
    //Amount of Points:
    int repeat = 7;
    
    //Deltas:
    float deltax = 0;
    float deltay = 0;
    
    //Control:
    boolean state_ch = false;
    int current = 0;
  
  //Methods:
  bridge(float pos1x_, float pos1y_, float pos2x_,float pos2y_)
  {
    //Position
    pos[0] = new PVector(0, 0);
    pos[1] = new PVector(0, 0);
    
    pos[0].x = pos1x_;
    pos[0].y = pos1y_;
    pos[1].x = pos2x_;
    pos[1].y = pos2y_;
    
    //Deltas:
    deltax = pos[1].x - pos[0].x;
    deltay = pos[1].y - pos[0].y;
    
    //P point startup:
    for(int i = 0; i < repeat; i++)
    {
      p[i] = new PVector(0, 0);
      p[i].x = (pos[0].x + ((deltax/repeat) * i));
      p[i].y = (pos[0].y + ((deltay/repeat) * i));
    }
    
    pointer_start();
  }
  
  //Functions:
    //Display Function - the Function that the program refers to when drawing the class, loops.
    void display()
    {
      for(int i = 1; i < repeat; i++)
      {
        line_draw(p[i - 1].x, p[i - 1].y, p[i].x, p[i].y);
      }
      
      //Control:
      
      if (mouseButton == LEFT)
      {
        state_ch = true;
      }
      if (mouseButton == RIGHT)
      {
        state_ch = false;
      }
      
      for (int i = 0; i < repeat; i ++)
      {
        if( ( (mouseX > (p[i].x - 5) ) && (mouseX < (p[i].x + 5)) ) && ( ((mouseY > (p[i].y - 5)) && (mouseY < (p[i].y + 5)) ) ) )
        { 
          current = i;
          
          if ((state_ch == true) && (current == i))
          {
            p[i].x = mouseX;
            p[i].y = mouseY;
          }
        }
      }
      
      //Pointer Update
      pointer_updater();
      point_draw();
      
      //R point Draw:
      stroke(255, 0, 0);
      strokeWeight(6);
      for (float i = 0; i < time; i += t_inc)
      {
        point(r.x, r.y);
      }
      
      time += t_inc;
      
      if (time > 1)
      {
        time_flag = true;
      }
      if (time_flag == true)
      {
        time = 0;
        time_flag = false;
      }
    }
    
    
    //Pointer Startup:
    void pointer_start()
    {
      for(int i = 0; i < (repeat - 1); i++)
      {
        q[i] = new PVector(p[i].x, p[i].y);
      }
      
      for(int i = 0; i < (repeat - 2); i++)
      {
        b[i] = new PVector(q[i].x, q[i].y);
      }
      
      for(int i = 0; i < (repeat - 3); i++)
      {
        d[i] = new PVector(b[i].x, b[i].y);
      }
      
      for(int i = 0; i < (repeat - 4); i++)
      {
        m[i] = new PVector(d[i].x, d[i].y);
      }
      
      for(int i = 0; i < (repeat - 5); i++)
      {
        n[i] = new PVector(m[i].x, m[i].y);
      }
    }
    
    //Pointer Updater Inator:
    void pointer_updater()
    {
      //Q point Startup:
      for (int i = 0; i < (repeat - 1); i ++)
      {
        q[i].x = ( (p[i].x) * (1 - time) ) + (p[i + 1].x * time);
        q[i].y = ( (p[i].y) * (1 - time) ) + (p[i + 1].y * time);
      }
      
      //B point Startup:
      for (int i = 0; i < (repeat - 2); i ++)
      {
        b[i].x = ( (q[i].x) * (1 - time) ) + (q[i + 1].x * time);
        b[i].y = ( (q[i].y) * (1 - time) ) + (q[i + 1].y * time);
      }
      
      //D point Startup:
      for (int i = 0; i < (repeat - 3); i ++)
      {
        d[i].x = ( (b[i].x) * (1 - time) ) + (b[i + 1].x * time);
        d[i].y = ( (b[i].y) * (1 - time) ) + (b[i + 1].y * time);
      }
      
      //M point Startup:
      for (int i = 0; i < (repeat - 4); i ++)
      {
        m[i].x = ( (d[i].x) * (1 - time) ) + (d[i + 1].x * time);
        m[i].y = ( (d[i].y) * (1 - time) ) + (d[i + 1].y * time);
      }
      
      //N Point Startup:
      for (int i = 0; i < (repeat - 5); i ++)
      {
        n[i].x = ( (m[i].x) * (1 - time) ) + (m[i + 1].x * time);
        n[i].y = ( (m[i].y) * (1 - time) ) + (m[i + 1].y * time);
      }
      
      for (int i = 0; i < (repeat - 6); i++)
      {
        r.x = ( (n[i].x) * (1 - time) ) + (n[i + 1].x * time);
        r.y = ( (n[i].y) * (1 - time) ) + (n[i + 1].y * time);
      }
    }
    
    //Point Draw:
    void point_draw()
    {
      for(int i = 1; i < (repeat - 1); i++)
      {
        point_gen(q[i - 1].x, q[i - 1].y, q[i].x, q[i].y);
      }
      
      for(int i = 1; i < (repeat - 2); i++)
      {
        point_gen(b[i - 1].x, b[i - 1].y, b[i].x, b[i].y);
      }
      
      for(int i = 1; i < (repeat - 3); i++)
      {
        point_gen(d[i - 1].x, d[i - 1].y, d[i].x, d[i].y);
      }
      
      for(int i = 1; i < (repeat - 4); i++)
      {
        point_gen(m[i - 1].x, m[i - 1].y, m[i].x, m[i].y);
      }
      
      for(int i = 1; i < (repeat - 5); i++)
      {
        point_gen(n[i - 1].x, n[i - 1].y, n[i].x, n[i].y);
      }
    }
    
    //Point Generator:
    void point_gen(float pos1x, float pos1y, float pos2x, float pos2y)
    {
      fill(255, 255, 255);
      stroke(0, 0, 0);
      strokeWeight(1);
      line(pos1x, pos1y, pos2x, pos2y);
      circle(pos1x, pos1y, 3);
      circle(pos2x, pos2y, 3);
    }
    
    void line_draw(float pos1x, float pos1y, float pos2x, float pos2y)
    {
      fill(255, 255, 255);
      stroke(0, 0, 0);
      strokeWeight(1);
      line(pos1x, pos1y, pos2x, pos2y);
      rect(pos1x - 5, pos1y - 5, 10, 10);
      rect(pos2x - 5, pos2y - 5, 10, 10);
    }
}

//Draw
void draw()
{
  //Background
  
  switch (atmchange)
  {
    case 0:
    //Variable Reset:
    choice_one = 0;
    choice_two = 0;
    playerone_choice = false;
    playertwo_choice = false;
    
    scene.MainMenu();
    
    mm_title.display();
    
    mm_play.display();
    if ( ((mouseX > 220) & (mouseX < 760)) & ((mouseY > 200) & (mouseY < 265)) & (mouseButton == LEFT) )
    {
      confirm1.play();
      mm_play.click();
    }
    mm_instruct.display();
    if ( ((mouseX > 220) & (mouseX < 760)) & ((mouseY > 295) & (mouseY < 360)) & (mouseButton == LEFT) )
    {
      confirm1.play();
      mm_instruct.click();
    }
    mm_credits.display();
    if ( ((mouseX > 220) & (mouseX < 760)) & ((mouseY > 390) & (mouseY < 455)) & (mouseButton == LEFT) )
    {
      confirm1.play();
      mm_credits.click();
    }
    
    //Texts:
    textAlign(CENTER);
    fill (255, 255, 255);
    textFont (menu_texts);
    
    text ("PLAY", width/2, 245);
    
    text ("INSTRUCTIONS", width/2, 340);
    
    text ("CREDITS", width/2, 435);

      break;
      
    case 1:
    scene.CharSelect();
    
    if ( (choice_one != 5) & (choice_two != 5) )
    {
      charsel_title.display();
    }
    else if ((choice_one == 5) | (choice_two == 5))
    {
      charsel_SAM_MAX.display();
    }
    
    //Kite:
    stroke (255, 255, 255);
    noFill();
    rect (35, 55, 90, 158);
    
    //Nucleus:
    stroke (255, 255, 255);
    noFill();
    rect (235, 55, 110, 158);
    
    //Classic:
    stroke (255, 255, 255);
    noFill();
    rect (550, 55, 110, 158);
    
    //Dread:
    stroke (255, 255, 255);
    noFill();
    rect (800, 55, 110, 158);
    
    //SAMandMAX
    stroke (255, 255, 255);
    noFill();
    rect (430, 250, 110, 158);
    
    //Character Object Summon
    kite_char.Kite();
    nucleus_char.Nucleus();
    classic_char.Classic();
    dread_char.Dread();
    police_char.SAMnMAX();
    
    //Character Selection:
    if ((playerone_choice == false) & (playertwo_choice == false))
    {
      choices_so_far = 0;
      
      textAlign(CENTER);
      fill(255, 0, 0);
      textFont (title3_text);
      
      text("P 1   C H O O S E   A   S H I P", width/2, 620);
    }
    
    if ((playerone_choice == true) & (playertwo_choice == false))
    {
      choices_so_far = 1;
      
      textAlign(CENTER);
      fill(0, 0, 255);
      textFont (title3_text);
      
      text("P 2   C H O O S E   A   S H I P", width/2, 620);
    }
    
    if ((playerone_choice == true) & (playertwo_choice == true))
    {
      choices_so_far = 2;
      
      textAlign(CENTER);
      fill(150, 150, 0);
      textFont (title_text);
      
      text("READY TO FIGHT?", width/2, 620);
    }
    
    switch (choices_so_far)
    {
      case 0:
      if ( ((mouseX > 35) & (mouseX < 145)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_one = 1;
      }
      
      if ( ((mouseX > 235) & (mouseX < 345)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_one = 2;
      }
      
      if ( ((mouseX > 550) & (mouseX < 660)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_one = 3;
      }
      
      if ( ((mouseX > 800) & (mouseX < 910)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_one = 4;
      }
      
      if ( ((mouseX > 430) & (mouseX < 540)) & ((mouseY > 250) & (mouseY < 413)) & (mouseButton == LEFT))
      {
        choice_one = 5;
      }
      break;
      case 1:
      if ( ((mouseX > 35) & (mouseX < 145)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_two = 1;
      }
      
      if ( ((mouseX > 235) & (mouseX < 345)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_two = 2;
      }
      
      if ( ((mouseX > 550) & (mouseX < 660)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_two = 3;
      }
      
      if ( ((mouseX > 800) & (mouseX < 910)) & ((mouseY > 55) & (mouseY < 213)) & (mouseButton == LEFT))
      {
        choice_two = 4;
      }
      
      if ( ((mouseX > 430) & (mouseX < 540)) & ((mouseY > 250) & (mouseY < 413)) & (mouseButton == LEFT))
      {
        choice_two = 5;
      }
      break;
    }
    
    if ((choice_one > 0) & (choices_so_far == 0))
    {
      charone_confirm.display();
      if (((mouseX > 350) & (mouseX < 395)) & ((mouseY > 420) & (mouseY < 495)) & (mouseButton == LEFT))
      {
        confirm2.play();
        charone_confirm.click();
      }
    }
    
    if ((choice_two > 0) & (choices_so_far == 1))
    {
      chartwo_confirm.display();
      if (((mouseX > 605) & (mouseX < 650)) & ((mouseY > 420) & (mouseY < 495)) & (mouseButton == LEFT))
      {
        confirm2.play();
        chartwo_confirm.click();
      }
    }
    
    switch (choice_one)
    {
      case 1:
      charselect_one.Kite();
      
      //Ship name
      textAlign (LEFT);
      fill(255, 0, 0);
      textFont (menu_texts);
      text("the Kite", 100, height - 100);
      textAlign (LEFT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the Kite", 103, height - 103);
      break;
      
      case 2:
      charselect_one.Nucleus();
      
      //Ship name
      textAlign (LEFT);
      fill(255, 0, 0);
      textFont (menu_texts);
      text("the Nucleus", 100, height - 100);
      textAlign (LEFT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the Nucleus", 103, height - 103);
      break;
      
      case 3:
      charselect_one.Classic();
      
      //ship name
      textAlign (LEFT);
      fill(255, 0, 0);
      textFont (menu_texts);
      text("the Classic", 100, height - 100);
      textAlign (LEFT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the Classic", 103, height - 103);
      break;
      
      case 4:
      charselect_one.Dread();
      
      //ship name
      textAlign (LEFT);
      fill(255, 0, 0);
      textFont (menu_texts);
      text("D R E A D", 100, height - 100);
      textAlign (LEFT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("D R E A D", 103, height - 103);
      break;
      
      case 5:
      charselect_one.SAMnMAX();
      
      //ship name
      textAlign (LEFT);
      fill(255, 0, 0);
      textFont (menu_texts);
      text("the DeSoto", 100, height - 100);
      textAlign (LEFT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the DeSoto", 103, height - 103);
      break;
    }
    
    switch (choice_two)
    {
      case 1:
      charselect_two.Kite();
      
      //ship name
      textAlign (RIGHT);
      fill(0, 0, 255);
      textFont (menu_texts);
      text("the Kite", width - 103, height - 100);
      textAlign (RIGHT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the Kite", width - 103, height - 103);
      break;
      
      case 2:
      charselect_two.Nucleus();
      
      //ship name
      textAlign (RIGHT);
      fill(0, 0, 255);
      textFont (menu_texts);
      text("the Nucleus", width - 103, height - 100);
      textAlign (RIGHT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the Nucleus", width - 103, height - 103);
      break;
      
      case 3:
      charselect_two.Classic();
      
      //ship name
      textAlign (RIGHT);
      fill(0, 0, 255);
      textFont (menu_texts);
      text("the Classic", width - 103, height - 100);
      textAlign (RIGHT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the Classic", width - 103, height - 103);
      break;
      
      case 4:
      charselect_two.Dread();
      
      //ship name
      textAlign (RIGHT);
      fill(0, 0, 255);
      textFont (menu_texts);
      text("D R E A D", width - 103, height - 100);
      textAlign (RIGHT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("D R E A D", width - 103, height - 103);
      break;
      
      case 5:
      charselect_two.SAMnMAX();
      
      //ship name
      textAlign (RIGHT);
      fill(0, 0, 255);
      textFont (menu_texts);
      text("the DeSoto", width - 103, height - 100);
      textAlign (RIGHT);
      fill(255, 255, 255);
      textFont (menu_texts);
      text("the DeSoto", width - 103, height - 103);
      break;
    }
    
        
      //text:
      textAlign(LEFT);
      fill (255, 200, 200);
      textFont (small_menutext);
          
      text ("SPEED:", 50, 275);
      text ("ATTACK:", 50, 300);
      text ("HEALTH:", 50, 325);
      
      textAlign(LEFT);
      fill (200, 200, 255);
      textFont (small_menutext);
      
      text ("SPEED:", 750, 275);
      text ("ATTACK:", 750, 300);
      text ("HEALTH:", 750, 325);
    
      textAlign(LEFT);
      fill (255, 200, 200);
      textFont (small_menutext);
        
      text (charselect_one.speed, 120, 275);
      text (charselect_one.attack, 120, 300);
      text (charselect_one.health, 120, 325);
      
      textAlign(LEFT);
      fill (200, 200, 255);
      textFont (small_menutext);
      
      text (charselect_two.speed, 820, 275);
      text (charselect_two.attack, 820, 300);
      text (charselect_two.health, 820, 325);
    
    //Character Selection undo:
    if (playerone_choice == true)
    {
      undo_char.display();
      
      textAlign(CENTER);
      fill (255, 255, 255);
      textFont (menu_texts);
      text ("UNDO", 500, 550);
      
      if ( ( (mouseX > 400) & (mouseX < 600)) & ( (mouseY > 500 ) & (mouseY < 575) ) & (mouseButton == LEFT) )
      {
        back.play();
        undo_char.click();
      }
    }
    
    //Universal Back button
    uni_back.display();
    if ( ((mouseX > 75) & (mouseX < 175)) & ((mouseY > 575) & (mouseY < 625)) & (mouseButton == LEFT) )
    {
      back.play();
      uni_back.click();
    }
    
    textAlign(CENTER);
    fill (255, 255, 255);
    textFont (menu_texts);
        
    text ("BACK", 125, 610);
    
    //READY!!
    if ((playerone_choice == true) & (playertwo_choice == true))
    {
      mm_ready.display();
      
      textAlign(CENTER);
      fill (255, 255, 255);
      textFont (menu_texts);
      text ("READY", 500, 470);
      
      if ( ((mouseX > 400) & (mouseX < 600)) & ((mouseY > 420) & (mouseY < 495)) & (mouseButton == LEFT))
      {
        READY.play();
        mm_ready.click();
      }
    }
    
        
    //Battle Variables:
    charone_speed = charselect_one.speed;
    charone_health = charselect_one.health;
    charone_attack = charselect_one.attack;
    
    Bank1 = MoneyGeneral;
    Bank2 = MoneyGeneral;
    
    chartwo_speed = charselect_two.speed;
    chartwo_health = charselect_two.health;
    chartwo_attack = charselect_two.attack;
    
    turns_so_far = 1;
    
      break;
    
//Battle!!
    case 2:
    scene.Battlefield();
    
    //turns:
    textAlign (CENTER);
    fill (255, 255, 255);
    textFont (small_menutext);
    text ("TURN:", width/2, 30);
    textFont (title_text);
    text (turns_so_far/2, width/2, 75);
    
    //Information:
    //Player One
    fill(100, 100, 0); 
    textAlign (LEFT);
    fill (255, 200, 200);
    textFont (small_menutext);
    text ("$ ", 50, 60);
    text (Bank1, 60, 60);
    text ("HEALTH: ", 50, 80);
    text (charone_health, 120, 80);
    text ("ATTACK:", 50, 110);
    text (charone_attack, 120, 110);
    text ("SPEED: ", 50, 140);
    text (charone_speed, 120, 140);
    
    //Player Two:
    textAlign (LEFT);
    fill (200, 200, 255);
    textFont (small_menutext);
    text ("$ ", 790, 60);
    text (Bank2, 800, 60);
    text ("HEALTH: ", 790, 80);
    text (chartwo_health, 860, 80);
    text ("ATTACK:", 790, 110);
    text (chartwo_attack, 860, 110);
    text ("SPEED: ", 790, 140);
    text (chartwo_speed, 860, 140);
    
    switch(choice_one)
    {
      case 1:
      player_one.Kite();
      break;
      
      case 2:
      player_one.Nucleus();
      break;
      
      case 3:
      player_one.Classic();
      break;
      
      case 4:
      player_one.Dread();
      break;
      
      case 5:
      player_one.SAMnMAX();
      break;
    }
    
    switch(choice_two)
    {
      case 1:
      player_two.Kite();
      break;
      
      case 2:
      player_two.Nucleus();
      break;
      
      case 3:
      player_two.Classic();
      break;
      
      case 4:
      player_two.Dread();
      break;
      
      case 5:
      player_two.SAMnMAX();
      break;
    }
    
    if ((charone_speed) >= (chartwo_speed))
    {
      playerone_turn = true;
    }
    else if ((charone_speed) < (chartwo_speed))
    {
      playerone_turn = false;
    }
    
    if ((turns_so_far % 2) == 1)
    {
      turn_control = 1;
    }
    
    if ((turns_so_far % 2) == 0)
    {
      turn_control = 2;
    }
    
    if (playerone_turn == true)
    {
      switch (turn_control)
      {
        case 1:
        noStroke();
        fill (255, 0, 0);
        rect (50, 475, 100, 100);
        
        rect (175, 475, 100, 100);
        
        rect (300, 475, 100, 100);
        
        //text:
        
        textAlign(CENTER);
        textFont (small_menutext);
        fill(255, 255, 255);
        text ("SPECIAL", 100, 525);
        text ("ONE", 100, 550);
        
        text ("REG", 225, 525);
        text ("ATTACK", 225, 550);
        
        text ("SPECIAL", 350, 525);
        text ("TWO", 350, 550);
        
        //Attack Select:
        
        if (((mouseX > 50) & (mouseX < 150)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (255, 0, 0);
          rect(50, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_one)
          {
            case 1:
            text ("-$3500  +10 atk", 200, 430);
            break;
            
            case 2:
            text ("-$10000  +13 atk  -5 en atk", 200, 430);
            break;
            
            case 3:
            text ("-$10000  +", 150, 430);
            text (5 * (charone_speed/100), 225, 430);
            text ("hp", 300, 430);
            break;
            
            case 4:
            text ("-$10000  +5 atk", 200, 430);
            break;
            
            case 5:
            text ("-$9000", 150, 405);
            text ("-15 hp", 250, 405);
            text ("10 ~ 20 damage", 200, 420);
            text ("- 1 ~ 15 en. atk", 200, 435);
            text ("- 1 ~ 15 en. spd", 200, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special1.play();
            command_count = 1;
            All_seeing.attacks1();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 175) & (mouseX < 275)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (255, 0, 0);
          rect(50, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_one)
          {
            case 1:
            text (7 * (charone_attack/100), 150, 430);
            text ("damage", 250, 430);
            break;
            
            case 2:
            text (5 * (charone_attack/100), 150, 430);
            text ("damage", 250, 430);
            break;
            
            case 3:
            text (6 * (chartwo_attack/100), 150, 430);
            text ("damage", 250, 430);
            break;
            
            case 4:
            text ("-$50", 130, 425);
            text (10 * (charone_attack/100), 250, 425);
            text ("dmg", 315, 425);
            text ("+", 170, 440);
            text (4 * (charone_attack/100), 200, 440);
            text ("hp", 250, 440);
            break;
            
            case 5:
            text (7 * (charone_attack/100), 200, 430);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            attack.play();
            command_count = 2;
            All_seeing.attacks1();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 300) & (mouseX < 425)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (255, 0, 0);
          rect(50, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_one)
          {
            case 1:
            text ("-$10000  + 15 hp", 200, 430);
            break;
            
            case 2:
            text ("+$10000  - 7 hp", 200, 430);
            break;
            
            case 3:
            text ("-$10000    +", 135, 430);
            text (2.5 * (charone_health/100), 230, 430);
            text ("spd", 300, 430);
            break;
            
            case 4:
            text ("-$10000", 200, 420);
            text ("-7 atk", 150, 440);
            text ("+5 hp", 250, 440);
            break;
            
            case 5:
            text ("-$10500", 125, 420);
            text (10 * (charone_attack/100), 225, 420);
            text ("damage", 315, 420);
            text ("+ 5 ~ 10 atk", 200, 435);
            text ("+ 5 ~ 20 hp", 200, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special2.play();
            command_count = 3;
            All_seeing.attacks1();
            turns_so_far ++;
          }
        }
        
        break;
        
        case 2:
        noStroke();
        fill (0, 0, 255);
        rect (600, 475, 100, 100);
        
        rect (725, 475, 100, 100);
        
        rect (850, 475, 100, 100);
        
        //text:
        
        textAlign(CENTER);
        textFont (small_menutext);
        fill(255, 255, 255);
        text ("SPECIAL", 650, 525);
        text ("ONE", 650, 550);
        
        text ("REG", 775, 525);
        text ("ATTACK", 775, 550);
        
        text ("SPECIAL", 900, 525);
        text ("TWO", 900, 550);
        
        if (((mouseX > 600) & (mouseX < 700)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (0, 0, 255);
          rect(600, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_two)
          {
            case 1:
            text ("-$3500  +10 atk", 775, 430);
            break;
            
            case 2:
            text ("-$10000  +13 atk  -5 en atk", 775, 430);
            break;
            
            case 3:
            text ("-$10000  +", 700, 430);
            text (5 * (chartwo_speed/100), 775, 430);
            text ("hp", 850, 430);
            break;
            
            case 4:
            text ("-$10000  +5 atk", 750, 430);
            break;
            
            case 5:
            text ("-$9000", 700, 405);
            text ("-15 hp", 800, 405);
            text ("10 ~ 20 damage", 750, 420);
            text ("- 1 ~ 15 en. atk", 750, 435);
            text ("- 1 ~ 15 en. spd", 750, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special1.play();
            command_count = 1;
            All_seeing.attacks2();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 725) & (mouseX < 825)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (0, 0, 255);
          rect(600, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_two)
          {
            case 1:
            text (7 * (chartwo_attack/100), 700, 430);
            text ("damage", 800, 430);
            break;
            
            case 2:
            text (5 * (chartwo_attack/100), 700, 430);
            text ("damage", 800, 430);
            break;
            
            case 3:
            text (6 * (chartwo_attack/100), 700, 430);
            text ("damage", 800, 430);
            break;
            
            case 4:
            text ("-$50", 680, 425);
            text (10 * (chartwo_attack/100), 800, 425);
            text ("dmg", 865, 425);
            text ("+", 720, 440);
            text (4 * (chartwo_attack/100), 750, 440);
            text ("hp", 800, 440);
            break;
            
            case 5:
            text (7 * (chartwo_attack/100), 750, 430);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            attack.play();
            command_count = 2;
            All_seeing.attacks2();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 850) & (mouseX < 950)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (0, 0, 255);
          rect(600, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_two)
          {
            case 1:
            text ("-$10000  + 15 hp", 750, 430);
            break;
            
            case 2:
            text ("+$10000  - 7 hp", 750, 430);
            break;
            
            case 3:
            text ("-$10000    +", 685, 430);
            text (2.5 * (chartwo_health/100), 780, 430);
            text ("spd", 850, 430);
            break;
            
            case 4:
            text ("-$10000", 750, 420);
            text ("-7 atk", 700, 440);
            text ("+5 hp", 800, 440);
            break;
            
            case 5:
            text ("-$10500", 675, 420);
            text (10 * (chartwo_attack/100), 775, 420);
            text ("damage", 865, 420);
            text ("+ 5 ~ 10 atk", 750, 435);
            text ("+ 5 ~ 20 hp", 750, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special2.play();
            command_count = 3;
            All_seeing.attacks2();
            turns_so_far ++;
          }
        }
        
        break;
        
      }
    }
    
    if (playerone_turn == false)
    {
      switch (turn_control)
      {
        case 1:
        noStroke();
        fill (0, 0, 255);
        rect (600, 475, 100, 100);
        
        rect (725, 475, 100, 100);
        
        rect (850, 475, 100, 100);
        
        //text:
        
        textAlign(CENTER);
        textFont (small_menutext);
        fill(255, 255, 255);
        text ("SPECIAL", 650, 525);
        text ("ONE", 650, 550);
        
        text ("REG", 775, 525);
        text ("ATTACK", 775, 550);
        
        text ("SPECIAL", 900, 525);
        text ("TWO", 900, 550);
        
        if (((mouseX > 600) & (mouseX < 700)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (0, 0, 255);
          rect(600, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_two)
          {
            case 1:
            text ("-$3500  +10 atk", 775, 430);
            break;
            
            case 2:
            text ("-$10000  +13 atk  -5 en atk", 775, 430);
            break;
            
            case 3:
            text ("-$10000  +", 700, 430);
            text (5 * (chartwo_speed/100), 775, 430);
            text ("hp", 850, 430);
            break;
            
            case 4:
            text ("-$10000  +5 atk", 750, 430);
            break;
            
            case 5:
            text ("-$9000", 700, 405);
            text ("-15 hp", 800, 405);
            text ("10 ~ 20 damage", 750, 420);
            text ("- 1 ~ 15 en. atk", 750, 435);
            text ("- 1 ~ 15 en. spd", 750, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special1.play();
            command_count = 1;
            All_seeing.attacks2();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 725) & (mouseX < 825)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (0, 0, 255);
          rect(600, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_two)
          {
            case 1:
            text (7 * (chartwo_attack/100), 700, 430);
            text ("damage", 800, 430);
            break;
            
            case 2:
            text (5 * (chartwo_attack/100), 700, 430);
            text ("damage", 800, 430);
            break;
            
            case 3:
            text (6 * (chartwo_attack/100), 700, 430);
            text ("damage", 800, 430);
            break;
            
            case 4:
            text ("-$50", 680, 425);
            text (10 * (chartwo_attack/100), 800, 425);
            text ("dmg", 865, 425);
            text ("+", 720, 440);
            text (4 * (chartwo_attack/100), 750, 440);
            text ("hp", 800, 440);
            break;
            
            case 5:
            text (7 * (chartwo_attack/100), 750, 430);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            attack.play();
            command_count = 2;
            All_seeing.attacks2();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 850) & (mouseX < 950)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (0, 0, 255);
          rect(600, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_two)
          {
            case 1:
            text ("-$10000  + 15 hp", 750, 430);
            break;
            
            case 2:
            text ("+$10000  - 7 hp", 750, 430);
            break;
            
            case 3:
            text ("-$10000    +", 685, 430);
            text (2.5 * (chartwo_health/100), 780, 430);
            text ("spd", 850, 430);
            break;
            
            case 4:
            text ("-$10000", 750, 420);
            text ("-7 atk", 700, 440);
            text ("+5 hp", 800, 440);
            break;
            
            case 5:
            text ("-$10500", 675, 420);
            text (10 * (chartwo_attack/100), 775, 420);
            text ("damage", 865, 420);
            text ("+ 5 ~ 10 atk", 750, 435);
            text ("+ 5 ~ 20 hp", 750, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special2.play();
            command_count = 3;
            All_seeing.attacks2();
            turns_so_far ++;
          }
        }
        break;
        
        case 2:
        noStroke();
        fill (255, 0, 0);
        rect (50, 475, 100, 100);
        
        rect (175, 475, 100, 100);
        
        rect (300, 475, 100, 100);
        
        //text:
        
        textAlign(CENTER);
        textFont (small_menutext);
        fill(255, 255, 255);
        text ("SPECIAL", 100, 525);
        text ("ONE", 100, 550);
        
        text ("REG", 225, 525);
        text ("ATTACK", 225, 550);
        
        text ("SPECIAL", 350, 525);
        text ("TWO", 350, 550);
        
        //Attack Select:
        
        if (((mouseX > 50) & (mouseX < 150)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (255, 0, 0);
          rect(50, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_one)
          {
            case 1:
            text ("-$3500  +10 atk", 200, 430);
            break;
            
            case 2:
            text ("-$10000  +13 atk  -5 en atk", 200, 430);
            break;
            
            case 3:
            text ("-$10000  +", 150, 430);
            text (5 * (charone_speed/100), 225, 430);
            text ("hp", 300, 430);
            break;
            
            case 4:
            text ("-$10000  +5 atk", 200, 430);
            break;
            
            case 5:
            text ("-$9000", 150, 405);
            text ("-15 hp", 250, 405);
            text ("10 ~ 20 damage", 200, 420);
            text ("- 1 ~ 15 en. atk", 200, 435);
            text ("- 1 ~ 15 en. spd", 200, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special1.play();
            command_count = 1;
            All_seeing.attacks1();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 175) & (mouseX < 275)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (255, 0, 0);
          rect(50, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_one)
          {
            case 1:
            text (7 * (charone_attack/100), 150, 430);
            text ("damage", 250, 430);
            break;
            
            case 2:
            text (5 * (charone_attack/100), 150, 430);
            text ("damage", 250, 430);
            break;
            
            case 3:
            text (6 * (chartwo_attack/100), 150, 430);
            text ("damage", 250, 430);
            break;
            
            case 4:
            text ("-$50", 130, 425);
            text (10 * (charone_attack/100), 250, 425);
            text ("dmg", 315, 425);
            text ("+", 170, 440);
            text (4 * (charone_attack/100), 200, 440);
            text ("hp", 250, 440);
            break;
            
            case 5:
            text (7 * (charone_attack/100), 200, 430);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            attack.play();
            command_count = 2;
            All_seeing.attacks1();
            turns_so_far ++;
          }
        }
        
        if (((mouseX > 300) & (mouseX < 425)) & ((mouseY > 475) & (mouseY < 575)))
        {
          fill (255, 0, 0);
          rect(50, 400, 350, 50);
          
          textAlign(CENTER);
          textFont (small_menutext);
          fill(255, 255, 255);
          
          switch(choice_one)
          {
            case 1:
            text ("-$10000  + 15 hp", 200, 430);
            break;
            
            case 2:
            text ("+$10000  - 7 hp", 200, 430);
            break;
            
            case 3:
            text ("-$10000    +", 135, 430);
            text (2.5 * (charone_health/100), 230, 430);
            text ("spd", 300, 430);
            break;
            
            case 4:
            text ("-$10000", 200, 420);
            text ("-7 atk", 150, 440);
            text ("+5 hp", 250, 440);
            break;
            
            case 5:
            text ("-$10500", 125, 420);
            text (10 * (charone_attack/100), 225, 420);
            text ("damage", 315, 420);
            text ("+ 5 ~ 10 atk", 200, 435);
            text ("+ 5 ~ 20 hp", 200, 450);
            break;
          }
          
          if (mouseButton == LEFT)
          {
            special2.play();
            command_count = 3;
            All_seeing.attacks1();
            turns_so_far ++;
          }
        }
        break;
      }
    }
    
    if (Bank1 <= 0)
    {
      bankruptcy = true;
      All_seeing.Out1();
    }
    
    if (charone_health <= 0)
    {
      All_seeing.Out1();
    }
    
    if (Bank2 <= 0)
    {
      bankruptcy = true;
      All_seeing.Out2();
    }
    
    if (chartwo_health <= 0)
    {
      All_seeing.Out2();
    }
    break;
      
    case 3:
    scene.BLUEWin();
    
    if (choice_two == 5)
    {
      Blue_SAM_MAX.display();
    }
    
    switch (choice_two)
    {
      case 1:
      victory_one.Kite();
      textAlign(LEFT);
      fill (0, 0, 0);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P2", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (0, 0, 0);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      break;
      
      case 2:
      victory_one.Nucleus();
      textAlign(LEFT);
      fill (0, 0, 0);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P2", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (0, 0, 0);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      break;
      
      case 3:
      victory_one.Classic();
      textAlign(LEFT);
      fill (0, 0, 0);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P2", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (0, 0, 0);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      
      break;
      
      case 4:
      victory_one.Dread();
      textAlign(LEFT);
      fill (0, 0, 0);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P2", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (0, 0, 0);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      
      break;
      
      case 5:
      victory_one.SAMnMAX();
      if (bankruptcy == false)
      {
        textAlign(LEFT);
        fill (0, 0, 0);
        textFont (small_menutext);
        
        text ("MAX: WOOHOO! WE WON SAM! WE ACTUALLY WON!", 50, 450);
        text ("SAM: But Max! It was really about the friends we made along the way-", 50, 480);
        text ("MAX: ...wha-", 50, 510);
        text ("SAM: I am just messing with you lil buddy, suck it, aliens!", 50, 540);
        text ("SAM & MAX: EARTH! EARTH! EARTH!", 50, 570);
      }
      
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (0, 0, 0);
        textFont (small_menutext);
        
        text ("SAM: And thus, falls a capitalist empire", 50, 450);
        text ("MAX: YEESH! Outsmarting capitalists always builds up an apetite!", 50, 480);
        text ("SAM: How about we go to STINKY'S, Max?", 50, 510);
        text ("MAX: SURE! I just hope their prices didn't inflate!", 50, 540);
      }
      break;
    }
    
    BlueWin_title.display();
    
    uni_back.display();
    if ( ((mouseX > 75) & (mouseX < 175)) & ((mouseY > 575) & (mouseY < 625)) & (mouseButton == LEFT) )
    {
      confirm1.play();
      uni_back.click();
    }
    
    textAlign(CENTER);
    fill (255, 255, 255);
    textFont (menu_texts);
        
    text ("BACK", 125, 610);
    
      break;
      
    case 4:
    scene.REDWin();
    
    if (choice_one == 5)
    {
      Red_SAM_MAX.display();
    }
    
    switch (choice_one)
    {
      case 1:
      victory_one.Kite();
      textAlign(LEFT);
      fill (255, 255, 255);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P1", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (255, 255, 255);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      break;
      
      case 2:
      victory_one.Nucleus();
      textAlign(LEFT);
      fill (255, 255, 255);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P1", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (255, 255, 255);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      break;
      
      case 3:
      victory_one.Classic();
      textAlign(LEFT);
      fill (255, 255, 255);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P1", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (255, 255, 255);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      break;
      
      case 4:
      victory_one.Dread();
      textAlign(LEFT);
      fill (255, 255, 255);
      textFont (menu_texts);
        
      text ("V I C T O R Y   P1", 50, 400);
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (255, 255, 255);
        textFont (small_menutext);
        
        text ("thanks to good management!", 50, 450);
      }
      break;
      
      case 5:
      victory_one.SAMnMAX();
      if (bankruptcy == false)
      {
        textAlign(LEFT);
        fill (255, 255, 255);
        textFont (small_menutext);
        
        text ("MAX: We won and all we got was this ugly background", 50, 450);
      }
      
      if (bankruptcy == true)
      {
        textAlign(LEFT);
        fill (255, 255, 255);
        textFont (small_menutext);
        
        text ("MAX: WE WON SAM! WE WON!", 50, 450);
        text ("SAM: We won under a capitalist system Max, is that really winning?", 50, 480);
        text ("MAX: ...Do you really need to be a f*cking killjoy?", 50, 510);
      }
      break;
    }
    
    RedWin_title.display();
    
    uni_back.display();
    if ( ((mouseX > 75) & (mouseX < 175)) & ((mouseY > 575) & (mouseY < 625)) & (mouseButton == LEFT) )
    {
      confirm1.play();
      uni_back.click();
    }
    
    textAlign(CENTER);
    fill (255, 255, 255);
    textFont (menu_texts);
        
    text ("BACK", 125, 610);
    
      break;
    
    case 5:
    scene.Instructions();
    
    charsel_title.display();
    
    textAlign(CENTER);
    fill (255, 255, 255);
    textFont (menu_texts);
        
    text ("Instructions", 500, 50);
    
    textAlign(LEFT);
    fill (255, 255, 255);
    textFont (small_menutext);
        
    text ("Each ship has its own qualities and abilities:", 100, 100);
    
    text ("-The Kite is the fastest ship in the game, it always gets to attack first.", 120, 150);
    
    text ("-The Nucleus has the most health, and can exchange health for money.", 120, 200);
    
    text ("-The Classic has a certain balance to it, all of its actions are linked", 120, 250);
    text ("to its three stats in some way.", 121, 280);
    
    text ("-The Dread hits hard and regens health when it damages its opponent.", 120, 330);
    
    text ("-The DeSoto is absolutely insane, its attacks are VERY inconsistant;", 120, 380);
    text ("it randomly outputs damage or stats.", 121, 410);
    
    text ("This entire game is based on a turn-based system, all ships have", 120, 460);
    text ("three commands; a regular attack, and two specials.", 120, 490);
    
    
    uni_back.display();
    if ( ((mouseX > 75) & (mouseX < 175)) & ((mouseY > 575) & (mouseY < 625)) & (mouseButton == LEFT) )
    {
      back.play();
      uni_back.click();
    }
    
    textAlign(CENTER);
    fill (255, 255, 255);
    textFont (menu_texts);
        
    text ("BACK", 125, 610);
    
    break;
    
    case 6:
    scene.Credits();
    
    charsel_title.display();
    
    uni_back.display();
    if ( ((mouseX > 75) & (mouseX < 175)) & ((mouseY > 575) & (mouseY < 625)) & (mouseButton == LEFT) )
    {
      back.play();
      uni_back.click();
    }
    
    textAlign(CENTER);
    fill (255, 255, 255);
    textFont (menu_texts);
        
    text ("BACK", 125, 610);
    
    //Credits text:
    textAlign (CENTER);
    fill (255, 255, 255);
    textFont (small_menutext);
    
    text ("Universidad de Guanajuato", 500, 70);
    
    text ("Campus Irapuato Salamanca, DICIS", 500, 100);
    
    text ("Licenciatura en Artes Digitales", 500, 130);
    
    text ("Object Oriented Programming Class", 500, 160);
    
    text ("Author:", 500, 220);
    text ("Hugo Alberto González Uribe", 500, 250);
    
    text ("Sam & Max are property of:", 500, 310);
    text ("Steve Purcell", 500, 340);
    
    text("Music:", 500, 400);
    text("Sam & Max: The Devil's Playhouse Intro Theme...........Jared Emerson-Johnsson", 500, 430);
    text("Sam & Max: Freelance Police tv show Intro Theme........???", 500, 460);
    text("None of the music employed in this game was created by the student who programmed it", 500, 490);
    text("The Sound effects were created through LMMS though", 500, 520);
    
    break;
  }
  
  //Call Music:
  music();
  
}

void music()
{
  //Battle Theme
  switch(atmchange)
  {
    case 0:
    Victory.stop();
    SM_Victory.stop();
    if ((playing == 0) || (playing == 7) || (playing == 8))
    {
      Menus.loop();
      playing = 6;
    }
    break;
    
    case 1:
    if (playing == 0)
    {
      Menus.loop();
      playing = 6;
    }
    break;
    
    case 2:
    
      Menus.stop();
      
        switch(choice_one)
        {
          case 1:
          if (playing == 6)
          {
            Kite.loop();
            playing = 1;
          }
          break;
          
          case 2:
          if (playing == 6)
          {
            Nucleus.loop();
            playing = 2;
          }
          break;
          
          case 3:
          if (playing == 6)
          {
            Classic.loop();
            playing = 3;
          }
          break;
          
          case 4: 
          if (playing == 6)
          {
            Dread.loop();
            playing = 4;
          }
          break;
          
          case 5:
          if (playing == 6)
          {
            SamMax.loop();
            playing = 5;
          }
          break;
        }
     break;
     
     case 3:
     //BlueWin
     switch (playing)
     {
       case 1:
       Kite.stop();
       break;
       
       case 2:
       Nucleus.stop();
       break;
       
       case 3:
       Classic.stop();
       break;
       
       case 4:
       Dread.stop();
       break;
       
       case 5:
       SamMax.stop();
       break;
     }
     
     if (choice_two != 5)
     {
       if (playing != 7)
       {
         Victory.play();
         playing = 7;
       }
     }
     else 
     {
       if (playing != 8)
       {
         SM_Victory.play();
         playing = 8;
       }
     }
     break;
     
     case 4:
     //RedWin
     switch (playing)
     {
       case 1:
       Kite.stop();
       break;
       
       case 2:
       Nucleus.stop();
       break;
       
       case 3:
       Classic.stop();
       break;
       
       case 4:
       Dread.stop();
       break;
       
       case 5:
       SamMax.stop();
       break;
     }
     if (choice_one != 5)
     {
       if (playing != 7)
       {
         Victory.play();
         playing = 7;
       }
     }
     else 
     {
       if (playing != 8)
       {
         SM_Victory.play();
         playing = 8;
       }
     }
     break;
     
     case 5:
     if (playing == 0)
      {
        Menus.loop();
        playing = 6;
      }
     break;
  }
}

//Curvas Bezier:

//Global Variables:

//Classes
bridge ejemplo1;

//setup:
void setup()
{
  size(600, 600);
  
  //Class Setup:
  ejemplo1 = new bridge(50, 300, 500, 300);
}
//draw:
void draw()
{
  //Para Cambiar de lugar los puntos de control, haga clic izquierdo, y arrastrelos, para dejar de mover puntos, haga clic derecho. 
  //No disfruté esta tarea :'v
  //Por alguna razón, no se produce la línea, a pesar de que el círculo sí aparece
  
  background(175);
  
  ejemplo1.display();
}

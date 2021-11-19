// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

//Alumna: OBREGÓN, Flor
//Legajo: 88230/9
//Juego: Left 4 Dead
//LINK YT: https://youtu.be/CRvGOSmVEh0
//------------------------------------------------------------------------

//declaro la clase juego
Juego juego;
void setup() {
  size( 800, 500 );
  //inicializo la clase juego
  juego = new Juego();
 
}
void draw() {
  //llamo a los métodos de la clase Juego
  juego.draw_();
  
}
void mousePressed() {
  juego.mPress();
}

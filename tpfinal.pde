Aventura a;
Juego j;
void setup() {

  size( 800, 500 );
  a = new Aventura();
  j = new Juego();
}
void draw() {
  background(0);
  a.dibujarAv();
}


void mousePressed() {

  a.cambiarPantallaAventura();

  j.mPress();
}

void keyPressed() {
  a.tec();
}

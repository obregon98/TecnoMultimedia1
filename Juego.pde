class Juego {
  //PROPIEDADES(VARIABLES)
  Mira mira;
  Botones bot1, bot2;
  Tiempo tiempo;
  Enemigos[] z;
  int pantalla;
  PImage in, te;
  PFont font;
  int cantZ;
  int contador = 0;

  //CONSTRUCTOR( setup)
  Juego() {
    pantalla = 0;
    font = loadFont("Future_Rot-80.vlw");
    in = loadImage("inicio.jpg");
    te = loadImage("techo.jpg");
    cantZ = 3;
    z = new Enemigos[cantZ];
    for ( int i = 0; i < cantZ; i++) {
      z[i] = new Enemigos();
    }
    mira = new Mira();
    bot1 = new Botones(210, 350, 340, 50);
    bot2 = new Botones(210, 350, 300, 50);
    tiempo = new Tiempo();
  }

  //METODOS (funciones);
  //dibuja
  void draw_() {
    //Logica de estados
    if (pantalla == 0) {
      image(in, 0, 0);
      texto("Acaba con los zombies antes de escapar", font, 20, color(200), width/4, height/4);
      bot1.dibujarBoton(0, 1, "Comenzar partida");
    } else if (pantalla == 1) {
      image(te, 0, 0);
      for ( int i = 0; i < cantZ; i++) {
        z[i].dibujarZ();
        //noCursor();
        if ( z[i].colision(z[i].x, z[i].y, z[i].ancho, z[i].alt) && (mousePressed)) {//COLISION""
          z[i].randomUbi();

          contador++;
          println("Colision:" + contador);
        }
      }
      mira.dibujar();
      mira.puntero();
      tiempo.barra();
      texto("puntos:" + contador, font, 20, color(230), 20, 50);
    } else if (pantalla == 2) {
      background(0);
      texto("Felicidades! \nlograste sobrevivir a los zombies \nahora podes escapar", font, 25, color(200), width/4, height/4);
      bot2.dibujarBoton(2, 0, "Volver al menu");
      tiempo.x = 800;
    }
    if (contador == 20) {
      contador = 0;
      pantalla = 2;
    }
  }
  //detecta boton
  void mPress() {
    if (bot1.botonPressed(210, 350, 340, 50) && pantalla == bot1.act ) {
      pantalla = bot1.prox;
    }
    if (bot2.botonPressed(210, 350, 300, 50) && pantalla == bot2.act ) {
      pantalla = bot2.prox;
    }
  }

  void texto(String txt, PFont f, int t, color c, float x, float y) {
    pushStyle();
    textFont(f);
    textSize(t);
    fill(c);
    text( txt, x, y );
    popStyle();
  }
}//cierra clase

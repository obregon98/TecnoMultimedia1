class Juego {

  //PROPIEDADES(variables)
  Boton bot1, bot2;
  Tiempo tiempo;
  Mira mira;
  Enemigos[] z;
  String estado;
  int cantZ;
  int contador = 0;
  PImage techo, muerte, in, ganar;
  int px, py, alt, anch;
  //CONSTRUCTOR(Setup)
  Juego() {  
    estado = "inicio";
    cantZ = 3;
    mira = new Mira();
    tiempo = new Tiempo();
    bot1 = new Boton(540, 450, 200, 40);
    bot2 = new Boton(335, 375, 165, 45);
    in = loadImage ("./img/inicio.jpg");
    muerte = loadImage("./img/principal3.jpg");
    techo= loadImage("./img/techo.jpg");
    ganar= loadImage("./img/ganar.jpg");
    z = new Enemigos[cantZ];
    for ( int i = 0; i < cantZ; i++) {
      z[i] = new Enemigos();
    }
  }
  //METODOS(funciones)

  void dibujarJuego() { 
    println( "estado:" + estado);
    if (estado == "inicio") {
      image(in, 150, 0);
      fill(200);
      textSize(20);
      text("El rescate esta en camino, mientras tanto sobrevive a la horda.", 20, 410);
      fill(#B4912E);
      textSize(30);
      text("Comenzar", 550, 480);
      bot1.botonRect(540, 450, 200, 40);
    } else if ( estado == "jugando") {
      image(techo, 0, 0);
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
      fill(200);
      textSize(20);
      text("puntos: " + contador, 20, 50);
      if (contador >= 20) {
        contador = 0;
        estado = "ganar";
      } 
      if (tiempo.x <= 0) {
        estado = "muerte";
      }
    } else if (estado  == "muerte") {
      image(muerte, 0, 0);
      fill(#640404);
      textSize(60);
      text("has muerto", width/4, height/6);
      fill(#B4912E);
      textSize(30);
      text( "Reiniciar", 340, 410); //tam 340, 410
      bot2.botonRect(335, 375, 165, 45);
    } else if ( estado == "ganar") {
      image(ganar, 165, 0);
      fill(200);
      textSize(20);
      text("Lograste acabar con los enemigos justo a tiempo. \nhelicoptero esta aqui, corre hacia el!", 20, 400);
    }
  }

  void mPress() {
    if (estado =="inicio" && mouseX > 540 && mouseX < 540 + 200 && mouseY > 450 && mouseY < 450 + 40 ) {
      tiempo.x = 800;
      contador = 0;
      estado="jugando";
    } else if (estado=="muerte" && mouseX > 335 && mouseX < 335+165 && mouseY > 375 && mouseY < 375+45 ) { 
      estado="inicio";
    }
  }

  void reiniciar() {
    estado = "inicio";
  }
}

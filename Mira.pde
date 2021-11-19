class Mira {
  //PROPIEDADES(VARIABLES)
  float posx, posy, ancho, alto;
  PImage arma, arma2, p;
  //CONSTRUCTOR( setup)
  Mira() {
    posx = mouseX-15;
    posy = 250;
    ancho = 28;
    alto = 28;
    arma = loadImage("arma.png");
    arma2 = loadImage("arma2.png");
    p = loadImage("puntero.png");
  }

  //METODOS (funciones);

  void dibujar() {
    //la imagen cambia dependiendo de la ubicación del mouse
    if (mouseX < width/2) {
      image(arma, 220, 330);
    } else if (mouseX > width/2) {
      image(arma2, 270, 330);
    }
  } 
  //puntero
  void puntero() {
    //rectMode(CENTER);
    fill(50, 230, 0);
    //rect(posx, posy, ancho, alto);
    image(p, mouseX-15, posy, ancho, alto);
    //p.resize(0, 30);
  }
}

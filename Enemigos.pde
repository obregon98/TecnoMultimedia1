class Enemigos {
  //PROPIEDADES(VARIABLES)
  float x, y, ancho, alt;
  PImage z;
  //CONSTRUCTOR( setup)
  Enemigos() {
    z = loadImage("zombie0.png");
    ancho = 63;
    alt = 145;
    randomUbi();
  }

  //METODOS (funciones);
  //Dibujo enemigo
  void dibujarZ() {
    image(z, x, y, ancho, alt);
    stroke(0);
    noFill();
  }

  //metodo para evaluar colision
  boolean colision(float x, float y, float ancho, float alt) {
    if ( mouseX > x-ancho/2 && mouseX < x+ancho 
      && mouseY > y-alt/2 && mouseY < y+alt/2) {
      println("Colision");
      return true;
    } else { 
      println("false");
      return false;
    }
  }
  
  void randomUbi() {
    x = random(0, width-100);
    y = 230;
  }
}

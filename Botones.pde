class Boton {
  //PROPIEDADES(VARIABLES)
  float botx, boty, botancho, botalto;

  //CONSTRUCTOR( setup)
  Boton(float bx_, float by_, float bancho_, float balto_) {
    botx = bx_;
    boty = by_;
    botancho = bancho_;
    botalto = balto_;
  }

  //METODOS (funciones);
  void botonRect(float x, float y, float tamX, float tamY) {
    if ( mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY) {
      noStroke();
      fill(127, 50);
      rect(x, y, tamX, tamY);
    }
  }

  boolean botonPressed1(int mx, int my, int px, int py, int ancho, int alto) {
    boolean press = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
    return press;
  }
}

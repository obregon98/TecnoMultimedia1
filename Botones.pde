class Botones {
  //PROPIEDADES(VARIABLES)
  int botx, boty, botancho, botalto, act, prox;
  String textoBoton;

  //CONSTRUCTOR( setup)
  Botones(int bx_, int by_, int bancho_, int balto_) {
    botx = bx_;
    boty = by_;
    botancho = bancho_;
    botalto = balto_;
  }

  //METODOS (funciones);
  void dibujarBoton(int act_, int prox_, String texto_) {
    act = act_;
    prox = prox_;
    textoBoton = texto_;
    noStroke();
    fill(127, 50);
    rect(botx, boty, botancho, botalto);
    textSize(30);
    fill(#B4912E);
    text(textoBoton, botx+10, boty+35);
  }  

  boolean botonPressed(int bx_, int by_, int bancho_, int balto_) {
    botx = bx_;
    boty = by_;
    botancho = bancho_;
    botalto = balto_;
    boolean press = mouseX > botx && mouseX < botx+botancho && mouseY > boty && mouseY < boty + botalto == true;
    return press;
  }
}

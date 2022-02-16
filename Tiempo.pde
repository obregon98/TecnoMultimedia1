class Tiempo {
  //PROPIEDADES(VARIABLES)
  color a = color(255, 0, 0);
  color b = color(0, 255, 0);
  int t;
  int m;
  float x = 0;
  //CONSTRUCTOR( setup)
  Tiempo() {

    t = 15*5000;
    m = millis();
    x = width;
  }
  //METODOS (funciones);

  void barra() {    
    noStroke();
    if (m < t) {
      x -= 0.5;
    }
    float c = map(x, 0, width, 0, 1);
    color cambio = lerpColor(a, b, c);
    stroke(0);
    fill(cambio);
    rect(0, 0, x, 20);
  }
}

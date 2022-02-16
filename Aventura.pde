class Aventura {
  //PROPIEDADES(variables)
  Pantalla p;
  // Juego j;
  Aventura() {
    //CONSTRUCTOR(Setup)
    p = new Pantalla();
    // j = new Juego();
  } 
  //METODOS(funciones)

  void dibujarAv() {
    p.dibujarPantallas();
  }

  void cambiarPantallaAventura() {
    p.cambiarPantalla();
    // j.mPress();
  }

  void tec() {
    p.teclas();
  }
}

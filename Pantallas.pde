class Pantalla {
  //PROPIEDADES(variables)
  Boton bot, bot2;
  float pantalla;
  PFont font, font2;
  PImage principal[] = new PImage[5];
  PImage bosque[] = new PImage[5];
  PImage tren[] = new PImage[6];
  PImage alcantarillas[] = new PImage[13];
  int px, py, alt, anch;
  Pantalla() {
    //CONSTRUCTOR(Setup)
    pantalla = 0;
    font = loadFont("Future_Rot-80.vlw");
    font2 = loadFont("AmazMegaGrungeOne-80.vlw");
    bot = new Boton(210, 350, 340, 50);
    bot2 = new Boton(px, py, alt, anch);
    for (int i = 0; i < principal.length; i++) {
      principal[i] = loadImage("./img/principal" + i + ".jpg");
    }
    for (int i = 0; i < bosque.length; i++) {
      bosque[i] = loadImage("./img/Bosque" + i + ".jpg");
    }
    for (int i = 0; i < tren.length; i++) {
      tren[i] = loadImage("./img/tren" + i + ".jpg");
    }
    for (int i = 0; i < alcantarillas.length; i++) {
      alcantarillas[i] = loadImage("./img/alcantarillas" + i + ".jpg");
    }
  }
  //METO DOS(funciones)

  void dibujarPantallas() {
    println("pantalla:" + pantalla);
    if (this.pantalla == 0) {
      image(principal[0], 0, 0);
      texto("Creditos", font, 20, color(#B4912E), 330, 440);
      texto("LEFT 4 DEAD", font2, 80, color(#640404), width/4.2, height/6);
      texto( "comenzar partida", font, 30, color(#B4912E), width/3.7, height/1.3);
      bot2.botonRect(210, 350, 340, 50);
      bot2.botonRect(324, 412, 110, 40);
    } else if (this.pantalla == 1) {
      image(principal[1], 120, 30);
      texto( "Despues de la primera oleada, Francis pudo encontrar un grupo de personas con las \ncuales compartio momentos unicos. aun con todo el desastre, trataba de verle el lado \nbueno a esto pero por desgracia un dia todo se complico y sus estimados colegas \nperdieron la vida tratando de protegerlo. ahora se encuentra en un refugio precario \nque se hallaba por el camino. su unica meta ahora es tratar de salir de este lugar, pero \neso solo sera posible si logra llegar al hospital mercy para solicitar un rescate. \n", font, 15, color(200), 10, height/1.3);
    } else if ( this.pantalla == 2) {
      image(principal[2], 0, 0);
      texto("Solo una de estas puertas puede llevarlo por el camino \ncorrecto pero, ¿Cual de todas sera?", font, 20, color(200), 20, height/1.2);
    } else if ( this.pantalla == 3) { 
      image(bosque[0], 80, 0);
      texto("El bosque puede ser una buena opcion, ademas no parece haber \nindicios de zombies por aqui... Espera un segundo! \n¿Acaso eso que se escucha es un llanto?", font, 20, color(200), 10, height/1.2);
    } else if (this.pantalla == 4) {
      image(bosque[1], 100, 0);
      texto("Cuidado! Hay una Witch aqui, tenes que ser silencioso si no \nqueres que te ataque...", font, 20, color(200), 20, height/1.2);
    } else if (this.pantalla == 5) {
      image(bosque[2], 70, 0);
      texto("!Oh no! Olvidaste apagar la linterna y eso la asusto", font, 20, color(200), 20, height/1.2);
    } else if (this.pantalla == 6) {
      image(bosque[3], 80, 0);
      texto("Es tarde para huir, ella viene por ti y no piensa parar hasta \nmatarte.", font, 20, color(200), 20, height/1.2);
    } else if (this.pantalla == 7) {
      image(principal[3], width-850, 0);
      texto("has muerto", font2, 80, color(#640404), width/4, height/6);
      texto( "Reiniciar", font, 30, color(#B4912E), 340, 410); //tam 340, 410
      bot2.botonRect(335, 375, 165, 45);
    } else if (this.pantalla == 8) {
      image(tren[0], 80, 0);
      texto("la estacion se ve poco fiable, habra que avanzar con \ncuidado.", font, 20, color(200), 20, 430);
    } else if (this.pantalla == 9) {
      image(tren[1], 90, 0);
      texto("hay algunos zombies por aca, es mejor tratar de evitarlos ya \nque francis no posee algun arma para defenderse.", font, 20, color(200), 20, height/1.2);
    } else if (this.pantalla == 10) {
      image(tren[2], 170, 0);
      texto("Si avanza despacio y sin hacer ruido, tal vez no lo noten...", font, 20, color(200), 20, height/1.2);
    } else if (this.pantalla == 11) {
      image(tren[3], 140, 0);
      texto("Uff, pudiste pasar sin problemas. Todo se ve mas tranquilo \naunque... ¿de donde proviene ese humo?", font, 20, color(200), 20, height/1.2);
    } else if (this.pantalla == 12) {
      image(tren[4], 80, 0);
      texto("Demonios, habia un smoker escondido ahi detras.", font, 20, color(200), 20, 430);
    } else if (pantalla == 13) {
      image(tren[5], 70, 0);
      texto("OH NO! el smoker ha atrapado a francis y es imposible soltarse. \nesta logrando asfixiarlo!", font, 20, color(200), 20, 450);
      println("pantalla: 13");
    } else if (pantalla == 14) {
      image(alcantarillas[0], 90, 0);
      texto("Puag... las alcantarillas, que asco! \npero por desgracia no hay otra opcion, parece ser el lugar \nmas seguro. Solo queda seguir...", font, 20, color(200), 20, 430);
    } else if (pantalla == 15) {
      image(alcantarillas[1], 120, 0);
      texto("Por fin encontraste las escaleras, apresurate a salir de este \nasqueroso lugar.", font, 20, color(200), 20, 430);
    } else if (pantalla == 16) {
      image(alcantarillas[2], 80, 0);
      texto("Se pueden oir a los zombies ahi afuera. \npero parece que tenes un poco de suerte, francis guardaba una \nbomba casera en uno de sus bolsillos.", font, 20, color(200), 20, 400);
    } else if (pantalla == 17) {
      image(alcantarillas[3], 250, 0);
      texto("queda una bomba casera ¿Deseas usarla?", font, 20, color(200), 160, 360);
      texto("si", font, 30, color(#B4912E), 300, 450);
      texto("no", font, 30, color(#B4912E), 450, 450);
      bot2.botonRect(295, 420, 40, 40);//si
      bot2.botonRect(445, 420, 60, 40);//no
    } else if (pantalla == 18) {
      image(alcantarillas[4], 70, 0);
      texto("¿Por que no la usaste? Los zombies lograron oirte, no hay \nsalida. es tu fin.", font, 20, color(200), 10, 420);
    } else if (pantalla == 19) {
      image(alcantarillas[5], 55, 0);
      texto("Eso es! gracias a la bomba lograste distraer a los zombies \ny francis puede avanzar.", font, 20, color(200), 20, 420);
    } else if (pantalla == 20) {
      image(alcantarillas[6], 70, 0);
      texto("Bien, ahora solo tenes que llegar a la azotea y encontrar el \nradio...", font, 20, color(200), 20, 420);
    } else if (pantalla == 21) {
      image(alcantarillas[7], 65, 0);
      texto("debes tener cuidado y avanzar sin hacer mucho ruido, cualquier \nmovimiento en falso puede costarle la vida a francis.", font, 20, color(200), 20, 420);
    } else if (pantalla == 22) {
      image(alcantarillas[8], 150, 0);
      texto("Tomar las escaleras sera lo mejor y lo mas seguro.", font, 20, color(200), 20, 430);
    } else if (pantalla == 23) {
      image(alcantarillas[9], 70, 0);
      texto("Por fin llegaste a la azotea del hospital, lo unico que queda \nes solicitar un rescate", font, 20, color(200), 20, 410);
    } else if (pantalla == 24) {
      image(alcantarillas[10], 70, 0);
      texto("Tienes suerte, el radio aun funciona, todavia se puede solicitar \nun rescate. Solo queda esperar un poco.", font, 20, color(200), 20, 410);
    } else if (this.pantalla == 25) {//aca va el juego
      j.dibujarJuego();
    } else if (pantalla == 26) {
      image(alcantarillas[12], 55, 0);
      texto("Excelente, ayudaste a francis a escapar del hospital! \ndonde sea que esten sus amigos, seguro que estaran orgullosos.", font, 20, color(200), 10, 430);
    } else if (pantalla == 27) {
      image(principal[4], 160, 0);
      texto("realizado por: obregon, flor \nlegajo: 88230.9 \ncomision: 2 \ntecno multimedia 2021", font, 20, color(200), 280, 320);
      texto("pulsa la barra espaciadora para omitir", font, 15, color(#B4912E), 430, 480);
    }
  }


  void cambiarPantalla() {

    if (pantalla == 0 && bot.botonPressed1(mouseX, mouseY, 210, 350, 320, 50)) {
      pantalla = 1;
      println( "Partida");
    } else if (pantalla == 0 && bot2.botonPressed1(mouseX, mouseY, 324, 410, 110, 40)) { 
      pantalla = 27;
      println( "Creditos");
    } else if ( pantalla == 1 && mouseX  < width && mouseY < height) {
      pantalla =2;
    } else if ( pantalla == 2 && bot2.botonPressed1(mouseX, mouseY, 72, 113, 170, 245)) {
      pantalla = 3;
      println("Puerta: 1");
    } else if ( pantalla == 3 && mouseX  < width && mouseY < height) {
      pantalla =4;
    } else if ( pantalla == 4 && mouseX  < width && mouseY < height) {
      pantalla =5;
    } else if ( pantalla == 5 && mouseX  < width && mouseY < height) {
      pantalla =6;
    } else if ( pantalla == 6 && mouseX  < width && mouseY < height) {
      pantalla =7;
    } else if (pantalla == 7  && bot2.botonPressed1(mouseX, mouseY, 335, 375, 170, 245)) {
      pantalla = 2;
    } else if ( pantalla == 2 &&  bot2.botonPressed1(mouseX, mouseY, 335, 113, 170, 245)) {
      pantalla = 8;
      println("Puerta: 2");
    } else if (pantalla == 8 && mouseX  < width && mouseY < height) {
      pantalla =9;
    } else if ( pantalla == 9 && mouseX  < width && mouseY < height) {
      pantalla =10;
    } else if ( pantalla == 10 && mouseX  < width && mouseY < height) {
      pantalla =11;
    } else if ( pantalla == 11 && mouseX  < width && mouseY < height) {
      pantalla =12;
    } else if ( pantalla == 12 && mouseX  < width && mouseY < height) {
      pantalla =13;
    } else if ( pantalla == 13 && mouseX  < width && mouseY < height) {
      pantalla = 7;
    } else if ( pantalla == 2 && bot2.botonPressed1(mouseX, mouseY, 585, 113, 170, 245)) {
      pantalla = 14;
      println("Puerta: 3");
    } else if ( pantalla == 14 && mouseX  < width && mouseY < height) {
      pantalla = 15;
    } else if ( pantalla == 15 && mouseX  < width && mouseY < height) {
      pantalla = 16;
    } else if ( pantalla == 16 && mouseX  < width && mouseY < height) {
      pantalla = 17;
    } else if (pantalla == 17 && bot2.botonPressed1(mouseX, mouseY, 445, 420, 60, 40)) { 
      pantalla = 18;
    } else if (pantalla == 18 && mouseX  < width && mouseY < height) {
      pantalla = 7;
    } else if (pantalla == 17  && bot2.botonPressed1(mouseX, mouseY, 295, 420, 60, 40)) {
      pantalla = 19;
    } else if (pantalla == 19  && mouseX  < width && mouseY < height) {
      pantalla = 20;
    } else if (pantalla == 20  && mouseX  < width && mouseY < height) {
      pantalla = 21;
    } else if (pantalla == 21  && mouseX  < width && mouseY < height) {
      pantalla = 22;
    } else if (pantalla == 22  && mouseX  < width && mouseY < height) {
      pantalla = 23;
    } else if (pantalla == 23  && mouseX  < width && mouseY < height) {
      pantalla = 24;
    } else if (pantalla == 24  && mouseX  < width && mouseY < height) {
      pantalla = 25;
    } else if (j.estado.equals("ganar") && pantalla == 25 && mouseX < width && mouseY < height ) {
      pantalla=26;
    } else if (pantalla == 26 && mouseX  < width && mouseY < height) {
      pantalla = 27;
    }
  }

  void teclas() {
    if (key==' '&& pantalla==27 ) {
      pantalla=0;
      j.reiniciar();
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
}

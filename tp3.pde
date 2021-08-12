//Link YT: https://youtu.be/YzuPHHuaYg8

int c, t;
float sw;
boolean relleno;
color a;

void setup() {
  size(600, 600);
  smooth();
  
  c = 10;
  t = width;
  sw = 1;

  relleno=true;
}

void draw() {

  for ( int i = c; i > 0; i --) {

    if (relleno) {
      a = color(map(i, 0, 30, 0, 190));
    }

    fill(a);
    strokeWeight(sw);
    t = (width+300)/ c ;

    ellipse( width/2, height/2, i*t, i*t);
  }

  //Punto rojo 
  if (frameCount>0) { 
    fill(255, 0, 0);
    ellipse(width/2, height/2, 10, 10);
  }
}

void keyPressed() {
  if ( key == '+' && c < 50 ) {
    c++;
    sw+=0.1;
  }

  if ( key == '-' && c > 0 ) {
    c--;
    sw-=0.1;
  }

  if (key=='r') {
    relleno=false;
    a = #ff0000;
    println("Rojo");
  } else if (key == 'g') {
    relleno=false;
    a = #00ff00;
    println("Verde");
  } else if ( key == 'b') {
    relleno=false;
    a = #0000ff;
    println("Azul");
  } else if (key == 'c') {
    relleno=false;
    a = #00ffff;
    println("Cian");
  } else if (key == 'm') {
    relleno=false;
    a = #ff00ff;
    println("Magenta");
  } else if (key == 'a') {
    relleno=false;
    a = #ffff00;
    println("Amarillo");
  } else if (key == 'l' ) {
    relleno=false;
    a = #77ff00;
    println("Lima");
  } else if ( key == 'x' ) {
    relleno=false;
    a = #0077ff;
    println("Cerúleo");
  } else if (key == 'f') {
    relleno=false;
    a = #ff0077;
    println("Fucsia");
  } else if (key == 'n') {
    relleno=false;
    a = #ff7700;
    println("Naranja");
  } else if (key == 'v') {
    relleno=false;
    a = #7700ff;
    println("Violeta");
  } else if (key == 'k') {
    relleno=false;
    a = #00ff77;
    println("Verde Cian");
  } //REINICIO
  else if (key == 'z') {
    relleno=true;
    c=10;
    sw=1;
    println("Reinicio");
  }
}

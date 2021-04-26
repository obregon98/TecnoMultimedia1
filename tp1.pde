 void setup()   {
   size( 800, 800 );
   
 }
 
 void draw() {
   
  background(255);
    
   noStroke();
   
   
  
   
 //triangle ( x1, y1, x2, y2, x3, y3 );
 //arriba IZQUIERDA VERDE AGUA
     fill(0, 255, 155);
   triangle( 400, 200, 500, 228, 400, 400);
   
   //ARRIBA IZQUIERDA VERDE
  fill( 0, 255, 0);
   triangle( 500, 228, 580, 315, 400, 400);
   
   //izquierda arriba VERDE LIMA
   fill( 155, 255, 0);
   triangle( 580, 315, 600, 400, 400, 400);
   
   //izquierda abajo AMARILLO
   fill( 255, 255, 0);
   triangle( 600, 400, 575, 500, 400, 400);
   
   //izquierda abajo NARANJA;
   fill( 255, 160, 0);
   triangle( 575, 500, 512, 567, 400, 400);
   
   //abajo izq ROJO
   fill( 255, 0, 0);
   triangle( 512, 567, 400, 600, 400, 400);
   
   //abajo derecha ROSA;
   fill( 255, 0, 155);
   triangle( 400, 600, 290, 567, 400, 400);
   
   //abajo derecha MAGENTA
   fill( 255, 0, 255);
   triangle( 290, 567, 222, 490, 400, 400);
   
   //abajo derecha VIOLETA
   fill( 160, 0, 255);
   triangle( 222, 490, 200, 400, 400, 400);
   
   //arriba derecha AZUL
   fill( 0, 0, 255);
   triangle( 200, 400, 234, 290, 400, 400);
   
   //arriba derecha CELESTE
   fill( 0, 100, 255);
   triangle( 234, 290, 313, 220, 400, 400);
   
   //DERECHA ARRIBA CYAN
   fill( 0, 255, 255);
   triangle( 313, 220, 400, 200, 400, 400);
    
    fill(255);
    circle ( 400, 400, 25);
   
  
   
   
 }

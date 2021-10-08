void botonRect(float x, float y, float tamX, float tamY){
  if( mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY){
    noStroke();
    fill(127,50);
    rect(x, y, tamX, tamY);
  }
}
void texto(String txt,PFont f, int t, color c, float x, float y){
  pushStyle();
  textFont(f);
  textSize(t);
  fill(c);
  text( txt, x, y );
  popStyle();
}
boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
  boolean press = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return press;
}

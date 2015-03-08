PImage fondo;

void setup(){
  size(400,400);
 fondo = loadImage("manzana.png"); 
}

void draw(){
  image(fondo,mouseX,mouseY);
}

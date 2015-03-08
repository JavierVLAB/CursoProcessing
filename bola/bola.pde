float bolaX;
float bolaY;
float newtonX;
PImage fondo;
PImage manzana;
PImage newton1;
PImage newton2;

void setup() {
  size(400, 400);
  bolaY = 0;
  bolaX = random(width);
  fondo = loadImage("fondo.png");
  manzana = loadImage("manzana.png");
  newton1 = loadImage("newton1.png");
  newton2 = loadImage("newton2.png");
}

void draw() {
  background(255);
  image(fondo,0,0);
  newtonX = mouseX;
  
  if(abs(newtonX - bolaX) < 50 && bolaY > height -150){
   //fill(255,0,0);
   image(newton2,newtonX,height-160);
  } else {
    //fill(0);
    image(newton1,newtonX,height-160);
  }  
  //ellipse(bolaX, bolaY, 30, 30);
  
  bolaY = bolaY + 2;
  
  //rect(newtonX,height-50,50,50);
  
  image(manzana,bolaX,bolaY);
  if(bolaY < height/2){
    bolaY = bolaY + 2;
  } else {
    bolaY = 0;
    bolaX = random(width);
  }
}


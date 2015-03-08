import processing.video.*;

Capture cam;

void setup() {
  size(640,480);

  cam = new Capture(this, 640,480);
  cam.start();
}

void draw() {

  image(cam, 0,0);    
  
}

void captureEvent(Capture c) {
  c.read();
}


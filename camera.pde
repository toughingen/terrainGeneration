void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (e <= 0) {
    zoom += .08;
    xo = 2*xo-mouseX;
    yo = 2*yo-mouseY;
  } else {
    zoom -= .08;
  }
}

void keyPressed() {
  if (key == ENTER) 
  {
    angle = 0;
    zoom = 1;
    xo = 0;
    yo = 0;
  }
  if (key == ' ') 
  {
    setup();
  }
}

void mouseDragged() {
  if (mouseButton == LEFT) {
    xo= xo + (mouseX - pmouseX);
    yo = yo + (mouseY - pmouseY);
  }
  if (mouseButton == RIGHT) {
    if (pmouseY-mouseY > 0) {
      angle -= .005;
    } else {
      angle += .005;
    }
  }
}
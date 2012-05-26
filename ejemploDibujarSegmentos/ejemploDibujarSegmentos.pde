float px, py;
boolean activo;
boolean primeraVez;
void setup() {
  size(800, 450);
  smooth();

  activo=false;  
  primeraVez=true;
  background(0);
  fill(255);
  strokeWeight(2);
  stroke(255);
}


void draw() {
  
  if (activo) {
    if (!primeraVez) {
      line(px, py, mouseX, mouseY);
    }
    else {
      primeraVez=false;
    }
    ellipse(mouseX, mouseY, 20, 20);
    px=mouseX;
    py=mouseY;
    activo=false;
  }
}

void mousePressed() {
  activo=true;
}


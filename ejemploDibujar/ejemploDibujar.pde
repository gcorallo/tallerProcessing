//declaramos variables:
int c;
boolean sube;
boolean activo;

void setup() {
  size(800, 450);
  smooth();

  //inicializamos variables
  c=0;
  sube=true;
  activo=false; 
  
  background(100, 100, 40);
  noStroke();
}


void draw() {
  fill(c, 255-c, 150, 200); 
  
  if (activo==true) {
    ellipse(mouseX, mouseY, 25, 25);
  }

  if (sube==true) {
    c++;
  }
  else {
    c--;
  }

  if (c>255 || c<0) {
    sube=!sube;
  }
}

void keyPressed() {
  if (key==' ') {
    background(100, 100, 40);
  }
}

void mousePressed() {
  activo=true;
}
void mouseReleased() {
  activo=false;
}


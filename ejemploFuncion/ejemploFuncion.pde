float x1, y1;

void setup() {
  size(800, 450);
  background(0);
  fill(200, 100, 100);
  x1=width/2;
  y1=height/2;
}


void draw() {
  background(0);

  dibujar(x1, y1, 50);
  float d=distancia(x1, y1, mouseX, mouseY);
  
  if (d<150) {
    dibujar(x1, y1, 300);
  }

  smooth();
}

float distancia(float x1, float y1, float x2, float y2) {
  float d;
  d=sqrt(sq(x2-x1)+sq(y2-y1));
  return d;
}


void dibujar(float xPos, float yPos, int radio) {
  ellipse(xPos, yPos, radio, radio);
}


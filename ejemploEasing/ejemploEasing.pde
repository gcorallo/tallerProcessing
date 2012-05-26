float xPos,yPos,xVel,yVel;
float easing=0.1;
float diam=50;

void setup(){
  size(800,450);
  stroke(255);
  strokeWeight(2);
  smooth();
}


void draw(){
  background(0);
  xPos+=(mouseX-xPos)*easing;
  yPos+=(mouseY-yPos)*easing;
  line(xPos,yPos,mouseX,mouseY);
  ellipse(xPos,yPos,diam,diam);
    
}



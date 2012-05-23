float xPos,yPos,xVel,yVel;
int radio;
void setup(){
  size(800,450);  
  xPos=width/2;
  yPos=height/2;
  xVel=1.7;
  yVel=-2.2;

  radio=30; 
  fill(200,150,50); 
}

void draw(){
  background(0);
  xPos+=xVel;
  yPos+=yVel;
  
  if(xPos<0 || xPos>width){
    xVel*=-1;
  }
  if(yPos<0 || yPos>height){
    yVel*=-1;
  }
  
  ellipse(xPos,yPos,radio,radio);
  

}

int n=10;
float[] xPos, yPos, xVel, yVel;
int radio;
void setup() {
  size(800, 450);  

  xPos=new float[n];
  yPos=new float[n];
  xVel=new float[n];
  yVel=new float[n];

  for (int i=0;i<n;i++) {
    xPos[i]=width/2;
    yPos[i]=height/2;
    xVel[i]=random(-3, 3);
    yVel[i]=random(-3, 3);
  }
  radio=30; 
  fill(200, 150, 50);
  noStroke();
  smooth();
}

void draw() {
  background(0);
  for (int i=0;i<n;i++) {

    xPos[i]+=xVel[i];
    yPos[i]+=yVel[i];

    if (xPos[i]<0 || xPos[i]>width) {
      xVel[i]*=-1;
    }
    if (yPos[i]<0 || yPos[i]>height) {
      yVel[i]*=-1;
    }
    ellipse(xPos[i], yPos[i], radio, radio);
  }
}


PImage mopHead;
void setup() {
  size(800,800);
  mopHead=loadImage("fract.jpg");
  imageMode(CENTER);
}
void draw() {
  background(255);
  fractYou(400,400,250);
}
public void fractYou(float centX, float centY, float girth) {
  float mover=3*girth/4;
  if(girth>=1) {
    fractYou(centX+mover, centY+mover, girth/2);
    fractYou(centX+mover, centY-mover, girth/2);
    fractYou(centX-mover, centY+mover, girth/2);
    fractYou(centX-mover, centY-mover, girth/2);
    image(mopHead, centX, centY,girth,girth);
  }
}

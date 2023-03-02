class Kicker {
  float theta;
  PVector size;
  int deltat=5; //delta theta

  Kicker() {
    theta=PI; 
    size=new PVector(30, 50);
  }
  void show() {
    pushMatrix();
    translate(width/2, height/2);
    rotate(theta);
    fill(0);
    triangle(size.x/2, -size.y/2, -size.x/2, -size.y/2, 0, size.y/2);
    popMatrix();
  }

  void clockwise() {
    theta+=radians(deltat);
  }
  void anticlockwise() {
    theta-=radians(deltat);
  }
}

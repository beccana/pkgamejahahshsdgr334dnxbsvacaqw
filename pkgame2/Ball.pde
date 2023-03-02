class Ball {

  float dia, theta; //diameter
  int deltay=5; //delta y
  float y; //coordinate
  float gpo;

  Ball() {
    y=width*width/4+height*height/4;
    dia=20;
    theta=0;
  }

  void show() {
    pushMatrix();
   translate(width/2,height/2);
   rotate(theta);
   ellipse(0,y,dia,dia);
   popMatrix();
  }  

  void update() {
    y+=deltay;
 
  }

  void shoot(Kicker t) {
    y=(t.size.y/2+dia/2);
    theta=t.theta;
  }

int hantei(int total){
   
  if(theta>=PI&&theta<PI*3/2){
   gpo=y-2*y*sin(sin((theta-PI)/2));
  }else if(theta<=PI&&theta>PI*1/2){
   gpo=y+2*y*sin(sin((theta-PI)/2));
  }
 
 if(gpo>=228 && gpo<235){
   
    if(tan(theta-PI)*gpo+300>=110+(second()*40)%300 && tan(theta-PI)*gpo+300<=170+(second()*40)%300){
      println(":Goal");
     
    
     total=total+1;
      
    }
  }
  //y=y/sin(-theta-PI/2);
  return total;
}

  boolean isFrameout() {
    if (y*y<=width*width/4+height*height/4)
      return false;

    return true;
  }
}

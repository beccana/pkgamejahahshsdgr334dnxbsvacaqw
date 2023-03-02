ArrayList <Ball> balls;
Kicker t;
Goal g;
int total;
boolean zika=true;
float ser;
void setup() {
  size(600, 600);
  frameRate(40);
  t=new Kicker();
  g=new Goal();
  balls=new ArrayList<Ball>();
  
}

void draw() {
  if(zika){
  background(255);
  t.show();
  g.show();
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).show();
    balls.get(i).update();
    total=balls.get(i).hantei(total);
    if (balls.get(i).isFrameout()) {
      balls.remove(i); 
      i--;
    }
  
  }
    scoq(total);
  }
  ser=second()%32;
   if(ser>30&&ser<=32){
     out(total);
     zika=false;
   }
}

void keyPressed() {
  if (keyCode==UP) {
    Ball b=new Ball();
    b.shoot(t);
    balls.add(b);
  }
  if (keyCode==RIGHT) {
    t.clockwise();
  }
  if (keyCode==LEFT) {
    t.anticlockwise();
  }

}

void scoq(int fr){
   fill(230,230,230);
   
  rect(10, 10, 100, 50);
   
    textSize(20) ;
    fill(0, 0, 255);
    text(fr+"p", 30, 30) ;
}

void out(int fr){
  
    
    fill(255, 0, 0) ;
    textSize(90) ;
    text("TIME OVER", width / 8, height / 2) ;
    textSize(50) ;
    text(fr+"p", width / 2,  height / 4) ;
   
}

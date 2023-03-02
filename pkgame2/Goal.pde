class Goal{
  
  
  void show(){
     pushMatrix();
    
    float gh=random((second()*40)%300-40,(second()*40)%300);
    fill(30,255,255);
    rect(60+gh, 70, 50, 2);
    rect(170+gh, 70, 50, 2);
    popMatrix();
  }
  
  
}

class buton{
  int x;
  int y;
  int w;
  int h;
  boolean flag=false;
  String textON;
  String textOF;
  String currentText;
  color Over=color(120);
  color notOver=color(218);
  buton(int x,int y,int w,int h,String textON,String textOF){
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.textON=textON;
    currentText=textON;
    this.textOF=textOF;
    
  }
  void draw(){
    if(this.MouseIsOver()){
    fill(Over);
    stroke(0);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(currentText, x + (w / 2), y + (h / 2));
    }
    else{
    fill(notOver);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(currentText, x + (w / 2), y + (h / 2));
    }
   
  }
  
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
    return true;
    }
    return false;
  }
  
  
  void mouseClicked(){
    if(MouseIsOver()){
      if(currentText==textON){
      currentText=StartStop.textOF;
      }
    else{
    currentText=textON;
    }
   }
  } 
 boolean mousePressed(){
   if(MouseIsOver()==true && mousePressed==true){ 
    return true;
    }
     return false;
   }

 }

    
  
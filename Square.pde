class Square{
  int x;
  int y;
  int clicked=-1;
  int width;
  
  Square(int x,int y,int width){
    this.x=x;
    this.y=y;
    this.width=width;
  }
  void draw(){
    if(clicked==1){
    fill(120);
    stroke(0);
    rect(x, y, width, width);
    }
    else{
    fill(255);
    stroke(0);
    rect(x,y, width, width);
    }
  }
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + width) && mouseY > y && mouseY < (y + width)) {
    return true;
    }
    return false;
  }
  
  void mouseIsClicked(){
    if(this.MouseIsOver()){
          if(clicked==-1){
     clicked=1;
      }
    else{
    clicked=-1;
    }
    }
    }
  
}
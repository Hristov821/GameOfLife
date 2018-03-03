class saveButon{
  int x;
  int y;
  int w;
  int h;
  boolean flag=false;
  String text;
  String type;
  saveButon(int x,int y,int w,int h,String text,String Type){
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.text=text;
    this.type=Type;
  }
  void draw(){
    if(this.MouseIsOver()){
      fill(120);
    stroke(0);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(text, x + (w / 2), y + (h / 2));
    }
    else{
       fill(218);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(text, x + (w / 2), y + (h / 2));
    }
   
  }
  
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
    return true;
    }
    return false;
  }
 
  
  void mouseClicked(){
    if(this.MouseIsOver()){
      saveFrame("Image-######"+type);
    }
   
  }

 boolean mousePressed(){
   if(MouseIsOver()==true && mousePressed==true){ 
    return true;
    }
     return false;
   }
   
}
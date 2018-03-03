class loadSavebuton {
  int x;
  int y;
  int w;
  int h;
  String text;
 loadSavebuton(int x,int y,int w,int h,String text){
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.text=text;
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
        selectInput("Select a file to process:", "fileSelected");
      }
     
  }
}
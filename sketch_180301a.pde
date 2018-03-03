boolean startGame=false;
boolean mouseOver=false;
buton StartStop=new buton(0,0,120,40,"Start","Stop");
saveButon SaveAsPNG=new saveButon(120,0,120,40,"Save.PNG",".png");
saveButon SaveAsGIF=new saveButon(240,0,120,40,"Save.GIF",".gif");
saveButon SaveAsTIF=new saveButon(360,0,120,40,"Save.TIF",".tif");
loadSavebuton LoadSavebuton=new loadSavebuton(480,0,120,40,"OpenSave");
Goi GOI=null;
//x=600 y=560

void setup(){
 size(601,641);
 //surface.setResizable(true);
 GOI=new Goi(0,40,25,width,height-40);
 GOI.init();


}

void draw(){
  
StartStop.draw();
SaveAsPNG.draw();
SaveAsGIF.draw();
SaveAsTIF.draw();
LoadSavebuton.draw();

GOI.draw();
 if(StartStop.currentText=="Stop"){
   GOI.arr=GOI.newGeneration();
 }
 
}


void mouseClicked(){
  
  StartStop.mouseClicked();
  
  SaveAsPNG.mouseClicked();
  
  SaveAsGIF.mouseClicked();
  
  SaveAsTIF.mouseClicked();
  
  LoadSavebuton.mouseClicked();
  
GOI.mouseIsClicked();
}


 
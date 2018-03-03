class Goi{
  int StartX;
  int StartY;
  int widthS;
  int col;
  int row;
  Square[][] arr;
  Goi(int StartX,int StartY, int widthS,int SizeX,int SizeY){
    this.StartX=StartX;
    this.StartY=StartY;
    this.widthS=widthS;
    col=(SizeX/widthS);
    row=(SizeY/widthS);
    arr=new Square[col][row];

  }
  
  void init(){
    
    int strX;
    int strY=StartY;
    for(int i=0;i<col;i++){
      strX=StartX;
      for(int j=0;j<row;j++){
        arr[i][j]=new Square(strX,strY,widthS);
        strX+=widthS;
         
      }   
      strY+=widthS;
    } 
  }
  
 
  void draw(){
    int clicked=0;
      for(int i=0;i<this.col;i++){
        for(int j=0;j<this.row;j++){
        this.arr[i][j].draw();
        if(arr[i][j].clicked==1){
          clicked++;
        }
        }
    }
    println(clicked);
    
  }
  void mouseIsClicked(){
       if(mouseY>40){
        for(int i=0;i<this.col;i++){
          for(int j=0;j<this.row;j++){
          this.arr[i][j].mouseIsClicked();
          }
        }
      }
   }
   
 ////////////////////////////////////////////////////////  
   
   
   
    int getNeightboors(int x,int y) {

            int temp = 0;
            for (int i = -1; i < 2; i++) {
                for (int j = -1; j < 2; j++) {
                    int nx = (x + i + arr.length) % arr.length;
                    int ny = (y + j + arr.length) % arr.length;
                    if (arr[nx][ny].clicked == 1) {
                        temp+=1;
                         
                    }
                }
            }
   
            if(arr[x][y].clicked==1){
                temp-=1;
                println("dasdas");
            }
         
           
            return temp;
        }
 
 
 
 
     public Square[][] newGeneration() {
            Square[][] newGen = new Square[col][row];
            for (int i = 0; i < col; i++) {
                for (int j = 0; j < row; j++) {
                    int neigh = getNeightboors(i, j);
                    int state=arr[i][j].clicked;
                  if(neigh==3 && state==-1){
                    newGen[i][j]=new Square(arr[i][j].x,arr[i][j].y,widthS);
                    newGen[i][j].clicked=1;
                  }
                  else if(state==1 && (neigh>3 || neigh<2)){
                    newGen[i][j]=new Square(arr[i][j].x,arr[i][j].y,widthS);
                    newGen[i][j].clicked=-1;
                  }
                  else {
                    newGen[i][j]=new Square(arr[i][j].x,arr[i][j].y,widthS);
                    newGen[i][j].clicked=arr[i][j].clicked;
                  }
                }

            }
            return newGen;
          }
            
  }
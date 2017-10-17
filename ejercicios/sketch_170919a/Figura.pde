class Figura{
float w,h,d; 
PVector position;
  Figura(){
    w=120;
    h=120;
    d=120;
    position= new PVector (0,0,0);
  }
  Figura(float nx, float ny, float nz){
    w=120;
    h=120;
    d=120;
    position= new PVector(nx, ny, nz);
  }
  void run(){
    display();
  }
  void display(){
    box(120,120,120);
  }
}
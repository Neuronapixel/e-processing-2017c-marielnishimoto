class Circulo {
  float x,y,w,h, speed, acc, x2, y2;
  Circulo(){
    x= 0;
    y= 0;
    w= 50;
    h= w;
    speed = 1;
    acc=1;
  }
  Circulo (float nx, float ny, float nw, float nh){
    
    x= nx;
    y= ny;
    w= nw;
    h= nh;
    speed = 1;
    acc=1;
    
    
  }
  void dibujar (){
    ellipse(x,y,w,h);
  }
}

class Sobre{
  float xi;
  float yi;
  float s;
  Sobre(float x, float y, float ns) {
  xi= x;
  yi= y;
  s= ns;
  }
  void run(){
    display();
  }
  void display(){
  beginShape();
 vertex (xi, yi);
 vertex (xi +(s/2), yi+(s/2));
 vertex (xi+s, yi);
 vertex (yi+s,xi);
 vertex (yi, xi);
 endShape(CLOSE);
  }
}
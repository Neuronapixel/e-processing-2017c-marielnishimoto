Sobre miSobre;

void setup(){
  size(600,600);
  miSobre= new Sobre(100,100,100);
  
}

void draw (){
  background(0);
  miSobre.xi= mouseX;
  miSobre.yi=mouseY;
miSobre.run();
}
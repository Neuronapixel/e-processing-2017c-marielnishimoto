class Particle {
PVector position, speed, acc;
float pSize;
float size;

Particle () {
position= new PVector (width/2, height/2,0);
speed = new PVector(random(-3,3),random (-3,3),0);
acc = new PVector ();
size = 10;
}

void run () {
  paint ();
  mover();
  checkEdges();
}

void paint (){
  rect (position.x, position.y, size, size);
  random ((random(0,255), random (0,255), random (0,255));
}
void checkEdges (){
 if(position.x > width) {
  position.x = 0;
}else if (position.x < 0){
  position .x = width;
}

if (position.y > height){
  position.y=0;
} else if (position.y <0){
  position.y=height;
}
}

void mover (){
  position.add(speed);
}
void gravedad (){
speed.add(gravedad);
}

void distance (){
  PVector mouseP = new pVector(mouseX, mouseY, 0);
  float distancia = PVector.dist(mouseP, position);
  println(distancia);
  size = map




}
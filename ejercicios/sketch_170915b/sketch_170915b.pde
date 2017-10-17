

Particle (){
  position = new Vec3D(width/2, height/2,0);
  speed = new Vec3D (random(-2,2), random (-2.2),0);
  acc = new Vec3D ();
  size = 10;
}

void run(){
show();
}

void bounce (){
 if ((position.x > width) || (position.x <0)) {
   speed.x = speed.x*-1;
 }
  if ((position.y > height) || (position.y <0)) {
   speed.y = speed.y*-1;
 }
 }
 void move(){
  speed.addSelf (acc);
  speed.limit(2);
  position.addSelf(speed);
  acc.clear();
 }
 void flock(){
  separate(4); 
 }
 void separate (float magnitude)
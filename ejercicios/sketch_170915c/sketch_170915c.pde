import toxi.geom.*;
ArrayList <Particles> pSystem;

void setup(){
  size(600,600);
  pSystem = new ArrayList <Particle>();
  int cuantas = 100;
  for (int i=1; i<cuantas; i++){
    Particle newParticle = new Particle ();
    pSystem.add(newParticle);
  }
}
void draw (){
  for (int i=1; i< pSystem.size(){
    pSystem.get(i).run();
}
}
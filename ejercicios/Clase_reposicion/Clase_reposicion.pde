import toxi.geom.*; 
ArrayList <Particle> pSystem;
void setup() {
  size (800, 600);
  pSystem = new ArrayList <Particle>();
  int cuantas = 100;
  for (int i=1; i<cuantas; i++) {
    Particle newParticle = new Particle();
    pSystem.add(newParticle);
  }
}

void draw() {
  background(100,109,200);
  for (int i=1; i <pSystem.size(); i++) {
    pSystem.get(i).run();
  }
}
Star[] stars = new Star[100];

float speed;

void setup() {
  size(600, 600);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {

 speed = 2;

  background(0);
  translate(600, 300);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
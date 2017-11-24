PImage image1;
int sizePixel;
void setup() {
  sizePixel = 10;
  size(896, 896);
  int escala = floor(width /sizePixel);
  image1 = loadImage("lila.jpg");
  image1.resize(escala, 0);
  image1.loadPixels();
  sizePixel = 10;
  for (int i=0; i < image1.width; i++) {
    for (int j =0; j < image1.height; j++) {
      stroke(image1.pixels[((i*escala)+j)]);
      fill(image1.pixels[((i*escala)+j)]);
      rect( j*sizePixel, i* sizePixel, sizePixel, sizePixel);
    }
  }
  image(image1, 0, 0);
}
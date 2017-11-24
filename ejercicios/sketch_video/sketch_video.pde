import processing.video.*;


Movie theImage;
int numPixelsWide, numPixelsHigh;
int blockSize = 2;
//Movie mov;
color movColors[];

void setup() {
  size(1280, 720);
  noStroke();
  theImage=new Movie(this,"Source.mp4");
  theImage.loop();
  numPixelsWide = width / blockSize;
  numPixelsHigh = height / blockSize;
  println(numPixelsWide);
  movColors = new color[numPixelsWide * numPixelsHigh];
}

// Display values from movie
void draw() {
//image(theImage, 0, 0);
    theImage.loadPixels();
    int count = 0;
    for (int i = 0; i < numPixelsHigh; i++) {
      for (int j = 0; j < numPixelsWide; j++) {
        movColors[count] = theImage.get(j*blockSize, i*blockSize);
        count++;
      }
    }
  
  background(255);
  for (int i = 0; i < numPixelsHigh; i++) {
    for (int j = 0; j < numPixelsWide; j++) {
      fill(movColors[i*numPixelsWide + j]);
      rect(j*blockSize, i*blockSize, blockSize, blockSize);
    }
  }

}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}
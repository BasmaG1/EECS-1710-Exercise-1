PImage bg;
int screenWidth = 400, screenHeight = 500;

int num = 60;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size(500, 200);
  noStroke();
  fill(255, 153);
  
  bg = loadImage("shapes.png");
}

void draw() {
  background(51); 
    image(bg, 0,0);
  // Cycle through the array, using a different entry on each frame. 
  // Using modulo (%) like this is faster than moving all the values over.
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;

  
  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}

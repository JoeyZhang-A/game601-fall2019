//Create a variable to hold a ball.
//
//Because we defined a 'class' for Ball, it is now a valid type
//of a variable (like int, float, etc. are by default).
Ball[] circles;
int numCircles = 10;

void setup() {
  size(800, 600);
  noStroke();
  colorMode(HSB, 100);
  
  circles = new Ball[numCircles];
  float h = random(0,100);
  for (int i = 0; i < circles.length; i++) {
    //Instantiate a Ball and store it in the ball variable we created above.
    circles[i] = new Ball(random(0, width), random(0,height), h);
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < circles.length; i++) {
    //Instantiate a Ball and store it in the ball variable we created above.
    circles[i].update();
  }
}

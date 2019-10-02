//Create a variable to hold a ball.
//
//Because we defined a 'class' for Ball, it is now a valid type
//of a variable (like int, float, etc. are by default).
Ball ball;

void setup() {
  size(800, 600);
  
  //Instantiate a Ball and store it in the ball variable we created above.
  ball = new Ball(200, 200);
}

void draw() {
  background(255);
  
  //Call the update function of the ball (see the Ball class).
  ball.update();
}

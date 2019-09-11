//Below if where we create a bunch of variables. Remember, these are just
//"named containers of numbers" (for now). In draw, we will modify the 
//numbers, and ultimately use posX and posY to draw a circle.

//Position (where we will draw the circle)
float posX = 200;
float posY = 200;

//Velocity (is added to position)
float velX = 3;
float velY = 1;

//Gravity (is added to velocity)
float gravity = 1.2;

//This will be used in when we call fill() below to set the color of each
//circle we draw.
float hue = 0;

void setup() {
  //Set the size of the window
  size(800, 600);
  
  //Make the background white.
  background(255, 255, 255);
  
  //Turn off the stroke (outline) of all the shapes we will draw.
  noStroke();
  
  //Change the color mode. This means that rather than RGB (red, green, blue),
  //we will be using Hue, Saturation, Brightness. We will be changing the hue
  //value so it is always cycling from 0 to 100 and back to 0 once it gets to 100.
  colorMode(HSB, 100);
}

void draw() {
  //Change the value of velY by adding the gravity amount to it.
  velY = velY + gravity;
  
  //Change the position variable's by adding velocities to them.
  posX = posX + velX;
  posY = posY + velY;
  
  //If we hit the bottom of the screen, reverse the velY value. This is what makes it
  //change direction.
  if (posY > height) {
    velY = velY * -1;
    posY = height;
  }
  
  //If we hit the left or right sides of the screen, go the opposite direction.
  if (posX > width || posX < 0) {
    velX = velX * -1; 
  }
  
  //Slowly increase the hue value over time.
  hue = hue + 1;
  if (hue > 100) {
    //When the hue gets bigger than 100 (the max number we set when we used 
    //colorMode() above), reset the value to 0.
    hue = 0; 
  }
  
  //Set the color of the circle we are about to draw.
  fill(hue, 80, 90);
  //FINALLY, draw a circle
  ellipse(posX, posY, 100, 100);
}

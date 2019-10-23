class Projectile {
  float x;
  float y;

  PImage image;
  
  float speed = 2;
  
  Projectile(float x, float y) {
    this.x = x;
    this.y = y;
    
    // Make use of the Processing loadImage function to give a value to the
    // PImage variable. This will be used below to draw the image on the screen. 
    this.image = loadImage("cat.png");
    
    // Once we've loaded the image data into the PImage variable, we can now 
    // make use of the PImage functions. Below we call the resize function to 
    // change the size of the image that will be drawn when we call the image
    // function below in update().
    //
    // The resize function will change the dimensions of a PImage to the w/h
    // values provided. If one of the two values is 0, it will maintain the aspect
    // ratio of the original image.
    this.image.resize(50, 0);
  }
  
  void update() {
    this.x += this.speed; //this.x = this.x + this.speed;
    
    if (this.x < 0 || this.x > width) {
      this.speed *= -1;  //this.speed = this.speed * -1;
    }
    
    // Draw the image we loaded in setup() at the (x,y) location.
    image(this.image, this.x, this.y);
  }
}

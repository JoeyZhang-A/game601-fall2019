class Ball {
  
  //The following variables will be part of any instantiated Ball object.
  //Within the class, we can refer to these variables by typing 
  //'this.<variableName>'. Out side of the class, we just need to use the
  //variable name instead of 'this' (e.g. 'ball.x').
  float x;
  float y;
  
  float velX;
  float velY;
  
  float diameter;
  
  float hue1;
  float hue2;
  float hue3;
  float offset = 10;
  
  //This is the 'constructor', and it is a function that is called whenever
  //a Ball is created (e.g. 'Ball ball = new Ball(10, 30);'). The 10 goes 
  //into the 'posX' argument, and the 30 goes into the 'posY' argument.
  //
  //Constructors are mostly used for initialization (sort of like the setup
  //function in Processing).
  Ball(float posX, float posY, float h) {
    
    
    //Store the arguments into the object's variables.
    this.x = posX;
    this.y = posY;
    
    this.velX = random(-10, 10);
    this.velY = random(-10, 10);
    
    this.diameter = random(10, 50);
    
    this.hue1 = h;//random(10, 80);
    this.hue2 = (this.hue1 + 50 + this.offset) % 100;
    this.hue3 = (this.hue1 + 50 - this.offset) % 100;
    
    print("Ball created");
  }
  
  void update() {
    this.x = this.x + this.velX;
    this.y = this.y + this.velY;
    
    if (this.x > width || this.x < 0) {
      this.velX = this.velX * -1; 
    }
    if (this.y > height || this.y < 0) {
      this.velY = this.velY * -1; 
    }
    fill(this.hue1, 70, 90);
    ellipse(this.x, this.y + this.diameter/2, this.diameter, this.diameter);
    fill(this.hue2, 70, 90);
    ellipse(this.x + this.diameter/2, this.y, this.diameter, this.diameter);
    fill(this.hue3, 70, 90);
    ellipse(this.x - this.diameter/2, this.y, this.diameter, this.diameter);
  }
}

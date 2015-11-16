//declare variables
float diam;
//float loc.x,loc.y
PVector loc; //replaces loc.x & loc.y

//float vel.loc.x, vel.loc.y
PVector vel; //replaces vel.loc.x & vel.loc.y

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  //loc.x = width/2
  //loc.y = height/2
  loc= new PVector(width/2, height/2);
  diam = 80;
  //vel.loc.x= random(-5,5)
  //vel.loc.y= random(-5,5)
  vel = new PVector (random(-5, 5), random (-5, 5));
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add velocity to position
  loc.x += vel.x;
  loc.y += vel.y;

  //bounce ball if it hits walls
  if (loc.x + diam/2 >= width) {
    vel.x = -abs(vel.x);    //if the ball hits the right wall, assign loc.x velocityloc.y the negative version of itself
  } else if (loc.x - diam/2 <= 0) {
    vel.x = abs(vel.x);     //if the ball hits the left wall, assign loc.x velocityloc.y the positive version of itself
  }
  if (loc.y + diam/2 >= height) {
    vel.y = -abs(vel.y);
  } else if (loc.y - diam/2 <= 0) {
    vel.y = abs(vel.y);
  }
}
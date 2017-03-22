var d = 30;
var x, y, xspeed, yspeed;

function setup() {
  createCanvas(600, 400);
  noStroke();
  x = random(d, width - d);
  y = random(d, height - d);
  xspeed = 2;
  yspeed = 3;
}

function draw() {
  background(255);
  x = x + xspeed;
  y = y + yspeed;
  if ((x > width - d/2) || (x < d/2)) {
    xspeed = xspeed * -1;
  }
  if ((y > height - d/2) || (y < d/2)) {
    yspeed = yspeed * -1;
  }
  fill(0);
  ellipse(x,y,d,d);
}
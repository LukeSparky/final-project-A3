class DG {

  PImage img1;

  PVector loc;
  PVector vel;
  PVector acc;

  float limit;

  PVector mouse;

  float rad;
  float radgrow;

  DG() {


    loc = new PVector(random(width), random(height));
    vel = new PVector(0, 0);
    limit = random(5, 80);

    rad = random(5, 45);
    radgrow = random(0.3);
  
  
  }
  
  void setup() {
  
  img1 = loadImage("meteor.png");
  
  img1.resize(width,height);
  
  image(img1,0,0);
  }
  
void draw(){ 
  
  image(img1,0,0);

}

  void bb() {
    rad+=radgrow;

    mouse = new PVector(mouseX, mouseY);
    PVector acc = PVector.sub(mouse, loc);
    acc.normalize();
    acc.mult(0.4);

    vel.add(acc);
    vel.limit(limit);
    loc.add(vel);

    if ( (loc.x > width) || (loc.x < 0)) {
      vel.x = vel.x * -1;
    }

    if ( (loc.y > width) || (loc.y < 0)) {

      vel.y = vel.y * -1;
    }

    float x = (loc.x);
    float y = (loc.y);
    fill(255);
    noStroke();
//ellipse(x, y, rad, rad);       
    image(img1, 0 , 0);
  }
}

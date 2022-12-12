DG[] dodgeball;

int num = 3;
int av = 20;
int score= 0;
PImage img1;

boolean collide = false;

void setup() {

  dodgeball = new DG[num];
  
  img1 = loadImage("meteor.png");
  
  img1.resize(width,height);
  
  image(img1,0,0);
  


  for (int i = 0; i < num; i++) {
    dodgeball[i] = new DG();
  }

  size(700, 700);
  background(200);
  fill(0,255,0);
  noStroke();
}

void draw() {

bg();


  for (int i = 0; i < num; i++) {
    dodgeball[i].bb();

    if (PVector.dist(dodgeball[i].loc, dodgeball[i].mouse) <= dodgeball[i].rad) {
      collide = true;
    }
  }

  if (collide) {
    background(0);
    fill(255,0,0);
    stroke(255);
    textSize(69);
    text("YOU DIED", width/2-170, height/2);
    fill(20,235,25);
    textSize(69);
     text("CLICK TO RESTART",75,55);
    
     
  }
}

void mousePressed() {

  background(0);
  collide = false;

  dodgeball = new DG[num];

  for (int i = 0; i < num; i++) {
    dodgeball[i] = new DG();
  }
}

void bg() {
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
}

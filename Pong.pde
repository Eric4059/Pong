//Pong!!

int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball


//speed
float vx;
float vy;


//movement
boolean wkey, skey, upkey, downkey;

  
//Score
int leftscore, rightscore, timer;

String chosenWinner;



void setup() {
  size(800, 800, P2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  textSize(60);
  stroke(0);
  strokeWeight(5);
  
  //initialize paddles
  leftx = 0;
  lefty = 400;
  leftd = 200;
  
  rightx = 800;
  righty = 400;
  rightd = 200;
  
  
  //initialize balls
  ballx = 400;
  bally = 400;
  balld = 40;
  
  vx = random(3, 5);
  vy = random(1, 5);
  
  //intialize movement keys
  wkey = skey = upkey = downkey = false;
  
  //initialize score
  leftscore = 0;
  rightscore = 0;
  
  
  
}



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {

    println("Error: Mode = " + mode);
  }
}





void tactileRect(int x, int y, int w, int l) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+l) {
    stroke(255);
  } else {
    stroke(0);
  }
}



void tactileCircle(int X, int Y, int r) {
  if (dist(mouseX, mouseY, X, Y) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}


void tactileCircle(float posX, float posY, float r) {
  if (dist(posX, posY, mouseX, mouseY) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}

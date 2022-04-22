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





void setup() {
  size(800, 800);
  mode = INTRO;
  
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
  
  
  //intialize movement keys
  wkey = skey = upkey = downkey = false;
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

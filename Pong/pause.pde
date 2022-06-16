void pause() {
  
  fill(255);
  tactileRect(375, 80, 50, 50);
  square(375, 80, 50);
  image(start, 400, 105, 30, 30);
  stroke(0);
  
  tactileRect(100, 500, 200, 80);
  fill(255);
  rect(100, 500, 200, 80);
  fill(0);
  textSize(60);
  text("Resume", 200, 540);
  
  tactileRect(500, 500, 200, 80);
  fill(255);
  rect(500, 500, 200, 80);
  fill(0);
  textSize(60);
  text("Quit", 600, 540);
  
}



void pauseClicks() {
  if (mouseX > 375 && mouseX < 425 && mouseY > 80 && mouseY < 130) {
    start = loadImage("start.png");
    mode = GAME;
  }
  if(mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 580){
    start = loadImage("start.png");
  mode = GAME;
  }
  
  if(mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 580){
    righty = lefty = 400;
    ballx = bally = 400;
    vx = random(3, 5);
    vy = 0;
    start = loadImage("start.png");
    leftscore = rightscore = 0;
    lefty = 400;
    righty = 400;
    mode = INTRO;
  }
  
  
}

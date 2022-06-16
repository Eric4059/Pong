void gameover() {

  gameover.play();
  textSize(100);
  text(chosenWinner, 400, 300);
  
  
  //buttons
  
  tactileRect(100, 500, 200, 80);
  fill(255);
  rect(100, 500, 200, 80);
  fill(0);
  textSize(60);
  text("Restart", 200, 540);
  
  tactileRect(500, 500, 200, 80);
  fill(255);
  rect(500, 500, 200, 80);
  fill(0);
  textSize(60);
  text("Home", 600, 540);
  
}


void gameoverClicks() {
  if(mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 580){
  leftscore = rightscore = 0;
  lefty = 400;
  righty = 400;
  mode = GAME;
  }
  
  if(mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 580){
    leftscore = rightscore = 0;
  lefty = 400;
  righty = 400;
  mode = INTRO;
  }
  
  
  
}

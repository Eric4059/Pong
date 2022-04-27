void intro() {
  background(#95C3FA);
  
  textSize(100);
  fill(0);
  text("Pong", 400, 200);
  
  //start 
  tactileRect(300, 500, 200, 80);
  fill(255);
  rect(300, 500, 200, 80);
  fill(0);
  textSize(60);
  text("Play", 400, 530);
}

void introClicks() {
  if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 580){
  mode = GAME;
  }
}

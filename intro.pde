void intro() {
  background(#95C3FA);
  
  textSize(100);
  fill(0);
  text("Pong", 400, 200);
  
  //start 
  tactileRect(100, 500, 200, 80);
  fill(255);
  rect(100, 500, 200, 80);
  fill(0);
  textSize(45);
  text("1 Player", 200, 530);
  
  tactileRect(500, 500, 200, 80);
  fill(255);
  rect(500, 500, 200, 80);
  fill(0);
  textSize(45);
  text("2 Player", 600, 530);
}

void introClicks() {
  if(mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 580){
  mode = GAME;
  }
  
  if(mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 580){
  mode = GAME;
  }
  
  
  
}

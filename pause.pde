void pause() {
  
  fill(255);
  tactileRect(375, 80, 50, 50);
  square(375, 80, 50);
  image(start, 400, 105, 30, 30);
  stroke(0);
  
  
  
}



void pauseClicks() {
  if (mouseX > 375 && mouseX < 425 && mouseY > 80 && mouseY < 130) {
    start = loadImage("start.png");
    mode = GAME;
    println("bobby");
  }
  
  
  
}

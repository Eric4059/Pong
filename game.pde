void game() {
  background(#95C3FA);
  //paddles
  fill(0);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //movement keys
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;


  if (lefty <= 100) {
    lefty = 100;
  } else if(lefty >= 700) {
    lefty = 700;
  }
  if (righty <= 100) {
    righty = 100;
  } else if(righty >= 700) {
    righty = 700;
  }

  //ball
  circle(ballx, bally, balld);
  
  if(ballx > 0 && ballx < 800 && bally > 0 && bally < 800){
  ballx = ballx + 1;
  bally = bally + 1;
  }
  
  if(dist())
}


void gameClicks() {
}

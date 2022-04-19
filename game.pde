void game() {
  background(#95C3FA);
  //paddles
  fill(0);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //movement keys
  if(wkey == true) lefty = lefty - 5;
  if(skey == true) lefty = lefty + 5;
  
  if(upkey == true) righty = righty - 5;
  if(downkey == true) righty = righty + 5;
  
  
  //ball
  circle(ballx, bally, balld);
}


void gameClicks() {
}

void game() {
  background(#95C3FA);
  //layout
  line(400, 0, 400, 800);
  
  
  
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
  
  //if(ballx > 0 && ballx < 800 && bally > 0 && bally < 800){
  ballx += vx;
  bally += vy;
  //}
  
  if(bally - 20 <= 0 || bally + 20 >= 800 || ballx - 20 <= 0 || ballx + 20 >= 800){
  vy = -vy;
    
  }
  
  if(dist(leftx, lefty, ballx, bally) <= 120){
  vx = (ballx - leftx)/30;


  }
  
  if(dist(rightx, righty, ballx, bally) <= 120){
  vx = (ballx - rightx)/30;


  }
  
  //scoreboard
  textSize(30);
  text("Player1 Score: " + leftscore, 200, 100);
  text("Player2 Score: " + rightscore, 600, 100);
  
  if(ballx < 0){
  rightscore++;
  ballx = 400;
  bally = 400;
}

  if(ballx > 800){
  leftscore++;
  ballx = 400;
  bally = 400;
  
  }
}


void gameClicks() {
}

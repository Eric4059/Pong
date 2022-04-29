void game() {
  background(#95C3FA);
  //layout
  line(400, 0, 400, 800);
  
  
  
  //paddles
  fill(#305789);
  circle(leftx, lefty, leftd);
  fill(#FA1735);
  stroke(255);
  circle(rightx, righty, rightd);

  //movement keys
  if (wkey == true) lefty = lefty - 7;
  if (skey == true) lefty = lefty + 7;

  if (upkey == true) righty = righty - 7;
  if (downkey == true) righty = righty + 7;


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
  fill(#9294C4);
  stroke(0);
  circle(ballx, bally, balld);
  
  //if(ballx > 0 && ballx < 800 && bally > 0 && bally < 800){
  ballx += vx;
  bally += vy;
  //}
  
  if(bally - 20 <= 0 || bally + 20 >= 800 || ballx - 20 <= 0 || ballx + 20 >= 800){
  vy = -vy;
    
  }
  
  if(dist(leftx, lefty, ballx, bally) <= 120){
  vx = (ballx - leftx)/22;
  vy = (bally - lefty)/22;
  }
  
  if(dist(rightx, righty, ballx, bally) <= 120){
  vx = (ballx - rightx)/22;
  vy = (bally - lefty)/22;
  }
  
  //scoreboard
  fill(0);
  textSize(35);
  text("Player 1 Score: " + leftscore, 200, 100);
  text("Player 2 Score: " + rightscore, 600, 100);
  
  if(ballx < 0){
  rightscore++;
  ballx = 400;
  bally = 400;
  vx = -1;
  vy = 0;
}

  if(ballx > 800){
  leftscore++;
  ballx = 400;
  bally = 400;
  vx = 1;
  vy = 0;
  
  }
  
  if(leftscore == 3){
  mode = GAMEOVER;
  chosenWinner = "Player 1 Wins!!";
  } else if(rightscore == 3){
  mode = GAMEOVER;
  chosenWinner = "Player 2 Wins";
  } 
  
}


void gameClicks() {
}

void game() {
  background(#95C3FA);
  //layout
  line(400, 0, 400, 800);



  //paddles
  fill(#305789);
  circle(leftx, lefty, leftd);
  fill(#FA1735);
  circle(rightx, righty, rightd);

  //movement keys
  if (wkey == true) lefty = lefty - 7;
  if (skey == true) lefty = lefty + 7;

  if (AI == false) {
    if (upkey == true) righty = righty - 7;
    if (downkey == true) righty = righty + 7;
  } else {
    if (ballx >= 400) {
      if (bally > righty) {
        righty = righty + 7;
      }
      if (bally  < righty) righty = righty - 7;
    }
  }


  if (lefty <= 100) {
    lefty = 100;
  } else if (lefty >= 700) {
    lefty = 700;
  }
  if (righty <= 100) {
    righty = 100;
  } else if (righty >= 700) {
    righty = 700;
  }

  //ball
  fill(#9294C4);
  stroke(0);
  circle(ballx, bally, balld);

  ballx += vx;
  bally += vy;
  //}

  if (bally - 50 <= 0 || bally + 50 >= 800) {
    vy = -vy;
  }
  if (bally - 50 <= -5) {
    bally = 50;
  }
  if (bally + 50 >= 800) {
    bally = 750;
  }

  if (dist(leftx, lefty, ballx, bally) <= 150) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }

  if (dist(rightx, righty, ballx, bally) <= 150) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  //scoreboard
  fill(0);
  textSize(35);
  text("Player 1 Score: " + leftscore, 200, 100);
  text("Player 2 Score: " + rightscore, 600, 100);

  if (ballx < 0) {
    rightscore++;
    ballx = 400;
    bally = 400;
    vx = -2;
    vy = 0;
  }

  if (ballx > 800) {
    leftscore++;
    ballx = 400;
    bally = 400;
    vx = 2;
    vy = 0;
  }

  if (leftscore == 3) {
    mode = GAMEOVER;
    chosenWinner = "Player 1 Wins!!";
  } else if (rightscore == 3) {
    mode = GAMEOVER;
    chosenWinner = "Player 2 Wins!!";
  } 


  //pause button
  fill(255);
  tactileRect(375, 80, 50, 50);
  square(375, 80, 50);
  image(start, 400, 105, 30, 30);
  stroke(0);
}


void gameClicks() {
  if (mouseX > 375 && mouseX < 425 && mouseY > 80 && mouseY < 130) {
    start = loadImage("pause.png");
    mode = PAUSE;
  }
}

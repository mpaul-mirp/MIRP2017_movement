void updateBallVelocity() {
  ballVy += gravity;
   // ballVx -=gravityx;
  // Add control for movement keys here
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;}
    if (ballX>displayWidth-ballRadius)
  {ballVx *=-1; ballX=displayWidth-ballRadius; }  
    if (ballX<ballRadius)
    {ballVx *= -1; ballX=ballRadius; }
    if (ballY < 0-ballRadius)
    {ballY = 0;ballVy *= -1 ;}
   
  
  // Resolve Collisions with all other walls.
}
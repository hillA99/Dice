void setup()
{
  size(600, 600);
  textAlign(CENTER, CENTER);
  noLoop();
}
Dice bob;
int counter;

void draw()
{
  background(0);
  for (int y = 60; y<500; y = y + 60)
  {
    for (int x = 60; x<500; x = x + 60)
    {
      bob = new Dice(x, y);
      bob.show();
    }
  }  
  fill(255);
  textSize(25);
  text("You rolled a " +counter, 300, 560);
  counter = 0;
}
void mousePressed()
{
  redraw();
}
class Dice
{
  //three member variables
  int dots; 
  int myX, myY;

  //three member functions
  Dice(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    dots = (int)(Math.random()*6)+1;
    Roll();
  }
  void Roll()
  {
    if (dots == 1) {
      counter += 1;
    } 
    if (dots == 2) {
      counter += 2;
    }
    if (dots == 3) {
      counter += 3;
    } 
    if (dots == 4) {
      counter += 4;
    } 
    if (dots == 5) {
      counter += 5;
    } 
    if (dots == 6) {
      counter += 6;
    }
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*256)+100, (int)(Math.random()*256)+100, (int)(Math.random()*256)+100);
    rect(myX, myY, 50, 50);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    if (dots == 1) {
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if (dots == 2) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    if (dots == 3) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    if (dots == 4) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    if (dots == 5) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if (dots == 6) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
    }
  }
}

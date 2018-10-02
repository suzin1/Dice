void setup()
{
  size(700,700);
	noLoop();
}
void draw()
{
   for(int y = 0 ; y <= 500 ; y+=50)
  {
    for(int x = 0 ; x <= 700 ; x+=50)
    {
      Die bob = new Die(x,y);
      bob.show();
    }
  }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int numDice, myX, myY, roll;
	Die(int x, int y) //constructor
	{
		//variable initializations here
    numDice = 6;
    myX = x;
    myY = y;
	}
	void roll()
	{
		roll = (int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(0);
    stroke(255);
    rect(myX,myY,50,50);
    fill(255);
    if (roll <= 1)
      ellipse(myX-25,myY-25,10,10);
    if (roll <= 2){
       ellipse(myX+12,myY-12,10,10);
       ellipse(myX-12,myY+12,10,10);
    }
    if (roll <= 3){
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX-25,myY-25,10,10);
      ellipse(myX-12,myY+12,10,10);
    }
    
    if (roll <= 4){
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX+37,myY-12,10,10);
      ellipse(myX-12,myY+12,10,10);
      ellipse(myX-37,myY+12,10,10);
    }
    if (roll <= 5){
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX+37,myY-12,10,10);
      ellipse(myX-25,myY-25,10,10);
      ellipse(myX-12,myY+12,10,10);
      ellipse(myX-37,myY+12,10,10);
    }
    if (roll <= 6){
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX+37,myY-12,10,10);
      ellipse(myX+37,myY-25,10,10);
      ellipse(myX-37,myY-25,10,10);
      ellipse(myX-12,myY+12,10,10);
      ellipse(myX-37,myY+12,10,10);
    }
    text("Sum: "+ myY, 350,650);
}
}

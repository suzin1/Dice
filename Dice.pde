void setup()
{
  size(300,300);
	noLoop();
}
void draw()
{
	background(0);
    Die bob = new Die();
    bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int numDice, myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
    numDice = (int)(Math.random()*7);
    myX = x;
    myY = y;
	}
	void roll()
	{
		int roll =(int)(Math.random()*7);
	}
	void show()
	{
		fill(255);
    rect(myX,myY,30,30);
    fill(0);
    if (roll = 1)
      ellipse(myX,mY,10,10);
}
}

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
    numDice = 9;
    myX = x;
    myY = y;
	}
	void roll()
	{
		if((int)(Math.random()*2) > 2)
         ellipse(x,y,5,5) ;
       else if((int)(Math.random()*3))
       ellipse(x,y,5,5);
       else if ((int)(Math.random())
       ellipse(x,y,5,5);
       else if((int)(Math.random())
       ellipse(x,y,5,5)
       else if ((int)(Math.random())
       ellipse(x,y,5,5);
       else
       ellipse(x,y,5,5);
	}
	void show()
	{
		for(int y= 1, y<=3;y++){
  for(int x= 1;x<=6;x++){
    ellipse(x,y,5,5);
  }
}
	}
}

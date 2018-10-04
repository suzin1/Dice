void setup()
{
  size(700,700);
	noLoop();
}
void draw()
{
  background(0);
   for(int y = 0 ; y <= 500 ; y+=50)
  {
    for(int x = 0 ; x <= 750 ; x+=50)
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
	int numDice, myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
    myX = x;
    myY = y;
    roll();
	}
	void roll()
	{
		numDice = (int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(0);
    stroke(255);
    rect(myX,myY,50,50);
    fill(255);
    if (numDice == 1){
      ellipse(myX-25,myY-25,10,10);
    }
    else if (numDice == 2){
       ellipse(myX+12,myY-12,10,10);
       ellipse(myX-12,myY+12,10,10);
    }
    else if (numDice == 3){
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX-25,myY-25,10,10);
      ellipse(myX-12,myY+12,10,10);
    }
    else if (numDice == 4){
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX+37,myY-12,10,10);
      ellipse(myX-12,myY+12,10,10);
      ellipse(myX-37,myY+12,10,10);
    }
    else if (numDice == 5){
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX+37,myY-12,10,10);
      ellipse(myX-25,myY-25,10,10);
      ellipse(myX-12,myY+12,10,10);
      ellipse(myX-37,myY+12,10,10);
    }
    else {
      ellipse(myX+12,myY-12,10,10);
      ellipse(myX+37,myY-12,10,10);
      ellipse(myX+37,myY-25,10,10);
      ellipse(myX-37,myY-25,10,10);
      ellipse(myX-12,myY+12,10,10);
      ellipse(myX-37,myY+12,10,10);
    }
  text("Sum: "+ ((int)(Math.random()*200)+300), 350,650);
}
}





  

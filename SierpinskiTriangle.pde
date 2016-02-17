boolean t=false;
public void setup()
{
background(0);
size(700,700);
noLoop();
 
}
public void draw()
{
background(0);
sierpinski(100,650,560);
}
public void mousePressed()//optional
{
}	
public void keyPressed()
{
		t = !t;
    redraw();
}
public void sierpinski(int x, int y, int len) 
{
	if (len < 20)
	{
		if(t == true)
			{
			fill((int)Math.random()*255);
			}
		else 	
		    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*256));
		triangle(x+5, y+10, x + len , y, x + len/2, y - len);
	}
	else
	{
		sierpinski(x,y, len/2);
		sierpinski(x + len/2,y,len/2);
		sierpinski(x + len/4,y - len/2, len/2);
	}
	
}

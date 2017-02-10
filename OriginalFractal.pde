public void setup()
{
	size(1000, 1000);
	background(135, 206, 250);
	stroke(255);
	fractal(600, 200, 600);
}

public void fractal(int x,int y, int len)
{
	if(len <= 10)
	{
		stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		ellipse(x, y, len/2, len/2);
	}
	else
	{
		fractal(x , y, len/2);
		fractal(x , y - len/2, len/6);
		fractal(x - len/2 , y, len/4);
		fractal(x + len/2, y + len/2, len/2);
		fractal(x - len/2, y + len/2, len/2);
	}
}
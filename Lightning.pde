int startX = 390;
int startY = 420;
int endX = 0;
int endY = 150;

int startX2 = 280;
int startY2 = 400;
int endX2 = 150;
int endY2 = 150;

int posX = 316;
int posY = 160;

PImage img;

void setup()
{
  	size(700,700);
  	strokeWeight(5);
	//load image
	img = loadImage("pikachu.png");
}



void draw()
{
	//just load this thing
	// PImage img = loadImage("pikachu.png");
  	background(img);
	drawSun();
	// drawCloud();
	// drawAnotherCloud();
	posX += 1;
	if (posX >= 700)
	{
		posX = 0;
	} 


	stroke(255, 255, 0);
	while (endX < 700)
	{
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*19)-10;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}

	while (endX2 > 0)
	{
		endX2 = startX2 - (int)(Math.random()*9);
		endY2 = startY2 + (int)((Math.random()*19)-10);
		line(startX2, startY2, endX2, endY2);
		startX2 = endX2;
		startY2 = endY2;
	}
	
	startX = 390;
	startY = 420;
	endX = 0;
	endY = 150;

	startX2 = 280;
	startY2 = 400;
	endX2 = 150;
	endY2 = 150;


}


void drawSun() 
{
	noStroke();
	fill(255,108,0);
	ellipse(110,110,200,200);
}


void drawCloud()
{
	fill(240, 232, 232);
	ellipse(240, 90, 166, 127);
	ellipse(158, 100, 95, 77);
	ellipse(326, 100, 95, 77);
}

void drawAnotherCloud()
{
	fill(240, 232, 232);
	ellipse(posX, posY, 166, 127);
	ellipse(posX-80, posY+17, 105, 77);
	ellipse(posX+100, posY+17, 105, 77);
}



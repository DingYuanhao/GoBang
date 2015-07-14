/* @pjs preload="black.bmp, white.bmp";*/
PImage img1;
PImage img2;
boolean bo[][];
int c[][];
boolean prime = true;

void setup()
{
  size(1000,1000);
  background(255);
  img1 = loadImage("black.bmp");
  img2 = loadImage("white.bmp");
  bo = new boolean[20][20];
  c = new int[20][20];
  for (int i=0;i<20;i++)
    for (int j=0;j<20;j++){
      bo[i][j] = true;
      c[i][j] = 0;
    }
  for (int i=0;i<10;i++)
  {
    line(0,i*100,1000,i*100);
    line(i*100,0,i*100,1000);
  }
}

void draw()
{
  
}

void mouseClicked()
{
  int bx = int((mouseX-50)/100);
  int by = int((mouseY-50)/100);
  if (bo[bx][by]){ 
    if (prime) 
    {
      image(img1,bx*100+67.5, by*100+67.5);
    c[bx][by] = 1;
    }
    else
    {
      image(img2,bx*100+67.5, by*100+67.5);
      c[bx][by] = 2;
    }
    bo[bx][by] = false;
    //if (check(5,bx,by)) win();
    prime = !prime;
  }
}
/*
boolean check(int t,int cx,int cy)
{
  if (t!=1) 
  {
    if (check(t-1,cx-1,cy-1)||check(t-1,cx-1,cy)||check(t-1,cx-1,cy+1)||check(t-1,cx,cy-1)||
      check(t-1,cx,cy+1)||check(t-1,cx+1,cy-1)||check(t-1,cx+1,cy)||check(t-1,cx+1,cy+1))
      return true;
    else
    {
      return false;
    }
  }
  else
  if ((c[cx-1][cy-1]==c[cx][cy])||(c[cx-1][cy]==c[cx][cy])||(c[cx-1][cy+1]==c[cx][cy])
    ||(c[cx][cy-1]==c[cx][cy])||(c[cx][cy+1]==c[cx][cy])||(c[cx+1][cy-1]==c[cx][cy])
    ||(c[cx+1][cy]==c[cx][cy])||(c[cx+1][cy+1]==c[cx][cy])) 
    return true;
  else 
    return false;
}


void win()
{
  if (prime){
    fill(#F24444);
    text("blackwin",500,500);
  }
  else
  {
    fill(#F24444);
    text("whitewin",500,500);
  }
}
*/

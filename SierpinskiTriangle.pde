public void setup()
{
  frameRate(15);
  size(800,800);
}
public void draw()
{
  if(frameCount % 10 == 0) {
    background(random(255), random(255), random(255));
  }
  sierpinski(0,600,800);
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=20){
    triangle(x,y,x+len/2,y-len/2,x+len,y);
  }
   else
   {
    fill((int)((Math.random()*256)+10), (int)((Math.random()*256)+10), (int)((Math.random()*256)+10));
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/4 , len/2);
   }
}

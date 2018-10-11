normalParticle[] bob;
void setup()
{
  size(300,300);
  background(0);
  bob = new normalParticle[100];
  
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new normalParticle();
  }
}
void draw()
{
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
}
class normalParticle //constructor
{
  double x,y,dSpeed, dDirection;
  int colorParticle = color(255);
  normalParticle(){
    x= (int)(Math.random()*300);
    y =(int)(Math.random()*300);
    dSpeed = Math.random()*10;
    dDirection = (Math.random()*2 * Math.PI);
  }
  void move(){
    x = x +(Math.cos(dDirection) * dSpeed);
    y = y + (Math.sin(dDirection) * dSpeed);
  }
  void show(){
    fill(colorParticle);
    ellipse((float)x, (float)y, 50,50);
   
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
}

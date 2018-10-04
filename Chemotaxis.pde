Magnet [] bob; 
void setup()   
 {     
     background(0);
     size(300,300);
     bob = new Magnet[50];
     for(int i = 0; i < bob.length; i++)
     {
       bob[i] = new Magnet();
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
 class Magnet
 {     
     int x, y;
     Magnet()
     {
       x =(int)(Math.random() * 300);
       y= (int)(Math.random() * 300);
     }
     void move(){
       x++;
       y++;
     }
     void show()
     {
       fill (255);
       ellipse(x,y,20,20);
     }
 }

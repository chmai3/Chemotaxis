Bacteria [] bob; 
void setup()   
 {     
       
     size(500,500);
     bob = new Bacteria[100];
     for(int i = 0; i < bob.length; i++)
     {
       bob[i] = new Bacteria();
     }
 }   
 void draw()   
 {    
    for(int i = 0; i < bob.length; i++)
    {
      bob[i].show();
      bob[i].move();
 }  
 class Bacteria
 {     
     int x, y;
     Bacteria()
     {
        x = (int)(Math.random() * 501);
       y= (int)(Math.random() * 501);
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
 }

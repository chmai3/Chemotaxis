Bacteria [] bob;
int x = 150;
void setup()   
 {     
     background(0);
     size(300,300);
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
      bob[i].move();
      bob[i].show();
    }
    if(mouseX > x ){ 
        x = x + (int)(Math.random()*5-1);
    }else{
          x = x + (int)(Math.random()*5-3);
    } 
 }  
 class Bacteria
 {     
     int x, y;
     Bacteria()
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
       ellipse(10,30,50,70);
     }
 }

eyeballs [] bob;
void setup()   
 {     
     background(50,200,220);
     size(300,300);
     bob = new eyeballs[10];
     for(int i = 0; i < bob.length; i++)
     {
       bob[i] = new eyeballs();
     }
 }   
 void draw()   
 {    
    for (int i = 0; i < bob.length; i++)
    {
      bob[i].show();
      bob[i].move();
    }
    
 }  
 class eyeballs
 {    
       int x, y, colorbob1, colorbob2, colorbob3;
       eyeballs(){
       x = 150;
       y = 150;
       colorbob1 = color(255);
       colorbob2 = color(75,50,25);
       colorbob3 = 0;
      
     }
     void move(){
      x = x + (int)(Math.random()*3)-1;
      y = y - (int)(Math.random()*3)+1;
      if (x <= 0)
       x = x + (int)(Math.random() * 10);
     if (x >= 300)
       x = x - (int)(Math.random() * 10);
     
       if (y <= 0)
       y = y + (int)(Math.random() * 10);
     if (y >= 300)
       y = y - (int)(Math.random() * 10);
     
     }

     void show()
     {
 
       fill(colorbob1);
       ellipse(x,y,100,70);
       fill(colorbob2);
       ellipse(x,y,40,45);
       fill(colorbob3);
       ellipse(x,y,15,15);
       if(X < (mouseX))
       x = x + (int)(Math.random() * 5) - 3;
       else  
       x = x + (int)(Math.random() * 5) - 1;
     //y-coordinate
     if(y < mouseY)
       y = y + (int)(Math.random() * 5) - 3;
     else  
       y = y + (int)(Math.random() * 5) - 1;
       
     }
     }
   
 

Bacteria [] colony1;
Bacteria [] colony2;//declare bacteria variables here   
void setup()   
{     
  size(500, 500);
  colony1 = new Bacteria [10];
  colony2 = new Bacteria [20];
  for (int i =0; i< colony1.length; i++)
  {
    colony1[i]=new Bacteria();
  }
  for (int i =0; i< colony2.length; i++)
  {
    colony2[i]=new Bacteria();
  }//initialize bacteria variables here
}
void draw()   
{    
  background(0);
  for (int i =0; i< colony1.length; i++)
  {
    colony1[i].walk();
    colony1[i].show();
  }
  for (int i =0; i< colony2.length; i++)
  {
    colony2[i].stay();
    colony2[i].show();
  }//move and show the bacteria
} 
class Bacteria    
{     
  int myX, myY, myBlue, myRed, myGreen;
  Bacteria()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myBlue = (int)(Math.random()*250+6);
    myRed = (int)(Math.random()*250+6);
    myGreen = (int)(Math.random()*250+6);
  }
  void walk()
  {
    if (mouseX > myX)
      myX = myX + (int)(Math.random()*7)-1;
    else
      myX = myX + (int)(Math.random()*7)-5;
    if (mouseY > myY)
      myY = myY + (int)(Math.random()*7)-1;
    else
      myY = myY + (int)(Math.random()*7)-5;
  }
  void stay()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()//lots of java!   
  {
    fill(myRed, myGreen, myBlue);
    ellipse(myX, myY, 15, 15);
    fill(212,250,245);
    ellipse(mouseX,mouseY,5,5);
    fill(255);
    if (get(mouseX+3, mouseY+3)!=color(0))
    {
      text ("Oops!", 300, 286);
    }
  }
}    
   
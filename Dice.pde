  void setup()
  {
      size(400,400);
      noLoop();
  }
  void draw()
  {  
    background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    for (int a = 0; a < 360; a = a + 55)
    {
      for(int b = 0; b < 350; b = b + 80){
      Die dice = new Die(a,b);
      dice.show();
      }
      //your code here
    }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int dots, myX, myY;
      Die(int x, int y) //constructor
      {
          dots = (int)(Math.random()*6)+1;
          myX = x;
          myY = y;
          //variable initializations here
      }
      void roll()
      {
      dots = (int)(Math.random()*6)+1;   
      
          //your code here
      }
      void show()
      {
          noStroke();
          fill(255);
          rect(myX,myY,50,50);
          if(dots > 5){
            fill((int)(Math.random()*255),(int)(Math.random()*256),(int)(Math.random()*356));
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX+40,myY+10,5,5);
            ellipse(myX+40,myY+20,5,5);
            ellipse(myX+40,myY+30,5,5);
            ellipse(myX+10,myY+30,5,5);
            ellipse(myX+10,myY+20,5,5);
          }
          else if ((dots > 4) && (dots < 6)){
            fill((int)(Math.random()*255),(int)(Math.random()*256),(int)(Math.random()*356));
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX+40,myY+10,5,5);
            ellipse(myX+25,myY+20,5,5);
            ellipse(myX+40,myY+30,5,5);
            ellipse(myX+10,myY+30,5,5);
           
          }
            else if ((dots > 3) && (dots < 5)){
            fill((int)(Math.random()*255),(int)(Math.random()*256),(int)(Math.random()*356));
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX+40,myY+10,5,5);
            ellipse(myX+40,myY+30,5,5);
            ellipse(myX+10,myY+30,5,5);
            }
            else if ((dots > 2) && (dots < 4)){
            fill((int)(Math.random()*255),(int)(Math.random()*256),(int)(Math.random()*356));
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX+40,myY+30,5,5);
            ellipse(myX+25,myY+20,5,5);
            }
            else if ((dots > 1) && (dots < 3)){
            fill((int)(Math.random()*255),(int)(Math.random()*256),(int)(Math.random()*356));
            ellipse(myX+25,myY+10,5,5);
            ellipse(myX+25,myY+30,5,5);
            }
            else{
              fill((int)(Math.random()*255),(int)(Math.random()*256),(int)(Math.random()*356));
              ellipse(myX+25,myY+25,5,5);
            }//your code here            //your code here
      }
  }

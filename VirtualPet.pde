import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}


public void draw() {
  int y = arduino.analogRead(5);
   System.out.println(y);
    if (y>50){
    y = 1;    
  } 
  background(192);
  fill(0,0,0,10);
  smooth();
  fill(#FCF000);
triangle(120,270+y,50,250+y,125,200+y);
triangle(280,220+y,280,270+y,345,250+y);
fill(#0270F2);
ellipse (400,350,1000,100);
fill(#E6F702);
ellipse (200,250,200,200);
stroke(#050505);
fill(#E6F702);
ellipse (200,120,140,140);
fill(#FCA500);
rect(150,340,10,40);
rect(230,340,10,40);
fill(#FCA500);
noStroke(); 
triangle(140,370,170,370,155,400);
triangle(220,370,250,370,235,400);
triangle(190,140,220,140,230,180);
triangle(190,140,180,160,230,180);
stroke(#050505);
fill(#FFFFFF);
ellipse (170,110,40,40);
ellipse (230,110,40,40);
fill(#030303);
ellipse (170,110,20,20);
ellipse (230,110,20,20);
fill(#3FFF00);
rect(0,400,1000,160);

}

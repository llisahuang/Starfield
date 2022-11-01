class Particle{
  int myC, mySize;
  double mySpeed, myAngle, myX, myY;
  Particle(){
    myC = color((int) (Math.random()*100) + 100, (int) (Math.random()*100)+100, (int) (Math.random()*100)+100);
    myAngle =  (double)(Math.random()* (2*Math.PI));
    mySpeed =  (double)(Math.random()*40);
    myX = 250;
    myY = 250;
    mySize = 6;
  }
  
  void move(){
    myX = (Math.cos(myAngle) * mySpeed) + myX;
    myY = (Math.sin(myAngle) * mySpeed) + myY;
  }
  
  void show(){
    fill (myC);
    noStroke();
    if (mySize == 6){
    ellipse ((float)myX, (float)myY, mySize,mySize);
    }else {
  rect((float)myX,(float)myY, 40,20);
  ellipse((float)myX, (float)myY +10.0, 30,20);
  ellipse ((float)myX + 40.0, (float)myY + 10.0, 30,20);
  ellipse ((float)myX + 20.0, (float)myY, 30,30);
  ellipse ((float)myX + 20.0, (float)myY, 55, 20);
  
  
   //rect(50,50, 40,20);
 // ellipse(50, 60, 30,20);
 // ellipse (90, 60, 30,20);
 // ellipse (70, 50, 30,30);
//  ellipse (70, 50, 55, 20);
}
  
  }
}

class OddballParticle extends Particle{
  OddballParticle(){
    myC = color(255);
    myAngle = (double) (Math.random()* (2*Math.PI));
    mySpeed = (double) (Math.random()*10);
    myX = 250;
    myY = 250;
    mySize = 13;
    }
    
  }
  

Particle [] ella = new Particle [1000];

void setup(){
  size (500,500);
  noStroke();
  frameRate(13);
  for (int i = 0; i < 30; i++){
    ella[i] = new OddballParticle();
  }
  for (int i = 30; i < ella.length; i++){
    ella[i] = new Particle();
  }
}


void draw(){
  background(#CBD6D5);
  for (int i = 0; i < ella.length; i++){
      ella[i].move();
      ella[i].show(); 
  }

}

//#E1E8E7 #CBD6D5

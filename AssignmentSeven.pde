PImage img1;
PImage img2;
int siz = 30;
int posX = 5; 
int posY = 100;
int velX = 4; 
int velY = 6;

boolean mState = false;
void setup(){
size(800, 600);
img1 = loadImage("note.png");
img2 = loadImage("note2.png");
}


void draw(){
if (mState == false){

background(255);

} else {
 
background(255);
  posX = posX + velX; 
  posY = posY + velY;
  
 //creates X and Y borders
  if(posX > width ||posX < 0){
    velX = velX * -1;
  }
  if(posY > height ||posY < 0){
    velY = velY * -1;
  }
image(img1, posX-50, posY-22);
image(img2, posX-300, posY-5);
}

}

void mousePressed(){
mState = !mState;
println("changed!");
}

void keyPressed(){
strokeWeight(random(10));                   
   
  note((int)random(455),(int)random(455));    
}



void note (int x, int y){                    
  fill(random(255),random(255),random(255));  // setting the color to random
  rect(75+x,10+y,2,100);                      // left vertical bar
  ellipse(50+x,100+y,50,50);                  // first circle (left side)
  rect(75+x,10+y,75,2);                       // horizontal bar
  rect(150+x,10+y,2,100);                     // right vertical bar
  ellipse(125+x,100+y,50,50);                 // second circle (right side)
  }

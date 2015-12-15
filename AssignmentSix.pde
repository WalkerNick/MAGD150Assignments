PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
int speed;
int y;
boolean mState = false;
boolean apple;
boolean overPic = false;
boolean locked = false;

float bx;
float by;

int picSize = 75;
color c=color(random(255),random(255), random(255));
float xOffset = 0.0; 
float yOffset = 0.0;




void setup(){
  size(1080, 720);
  img = loadImage("tree.png");
  img2 = loadImage("sun.jpeg");
  img3 = loadImage("apple.png");
  img4 = loadImage("basket.png");
  img5 = loadImage("bread.jpg");
  frameRate(60);
}




  
  






  
  



void draw(){
if (mState == false){
background(255);
  image(img, 0, 0, 550, 600);
  image(img2, 900, -100);
  image(img3, 400, 300 + y, 100, 100);
  fill(52, 208, 0);
  beginShape();
   vertex(0, 550);
   vertex(1080, 550);
   vertex(1080, 720);
   vertex(0, 720);
   vertex(0, 550);
   endShape(CLOSE);
} else {
background(255);
fill(c);
strokeWeight(0);
beginShape();
vertex(0, 550);
vertex(350, 550);
vertex(350, 720);
vertex(0, 720);
vertex(0, 550);
endShape(CLOSE);

fill(c);
strokeWeight(0);
beginShape();
vertex(1080, 550);
vertex(730, 550);
vertex(730, 720);
vertex(1080, 720);
vertex(1080, 550);
endShape(CLOSE);

image(img5, bx, by, picSize, picSize);
image(img4, 750, 259);
 if (mouseX > bx-picSize && mouseX < bx+picSize && 
      mouseY > by-picSize && mouseY < by+picSize) {
    overPic = true;  
    if(!locked){

      
      }
      else 
      overPic = false;
}
}
}
{
}

// I am using mouse presses to toggle SCENES
void mousePressed(){
  
 image(img3, 400, 300 + y, 100, 100);
y = y +2; 
  
 if(overPic){
    locked = true; 
    fill(255, 255, 255);
  } else {
    locked = false;
  }
  xOffset = mouseX-bx; 
  yOffset = mouseY-by; 

} 
  
  



// I am using key presses trigger events
void keyPressed(){
mState = !mState;
}

void mouseDragged() {
  if(locked) {
    bx = mouseX-xOffset; 
    by = mouseY-yOffset; 
  }
}

void mouseReleased() {
  locked = false;
}

//create a boolean to track the stack, so we can toggle scenes based on the state.
boolean mState = false;
PImage img;
PImage img2;
PImage img3;

float u;

int x;
int y;
void setup(){
size(800, 600);
img = loadImage("pumpkin.jpg");
img2 = loadImage("skeleton.jpg");
img3 = loadImage("candycorn.jpg");

}
// This draw loop has a basic If statement that executes one set of code (background and other functions)
// There different sets of functions that execute based on the 
void draw(){
 image(img3,x,5,200,200);
 u+=0.01;
if (mState == false){
//< CODE FOR SCENE 1 >
background(255);




}



mState = !mState;
if(mousePressed == true) { //add some interaction
    image(img, mouseX, mouseY);
  }

}
// I am using key presses trigger events
void keyPressed(){
bang();
}
void bang(){
background(0);
image(img2, 100, 100);
}

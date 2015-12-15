//giving data to the image
//PImage img;
PImage img2;
PImage img3;
float x;
float y;


void setup(){
 size(1280,800, P2D);
 //img=loadImage("stick.png");
 img2=loadImage("player.jpg");
 img3=loadImage("hockeypuck.jpg");
 frameRate(1000);
 
 
 
 
 


}


void draw(){
//soccerball and basketball movement code
 background(255);
//image(img,,mouseY,50,50);
image(img2,mouseX,mouseY,100,100);
image(img3,mouseX,mouseY,30,30);
//outline of field
beginShape(LINES);
vertex(30,30);
vertex(1245,30);
vertex(1245,750);
vertex(30,750);
vertex(30,30);
endShape();

//goals
beginShape();
vertex(120,325);
vertex(130,325);
vertex(130,445);
vertex(120,445);
vertex(120,325);
endShape();

beginShape();
vertex(1140,325);
vertex(1150,325);
vertex(1150,445);
vertex(1140,445);
vertex(1140,325);

endShape();


arc(31,31,25,25,0,HALF_PI);

arc(250,600,100,100,0,PI+PI);
arc(250,175,100,100,0,PI+PI);



ellipse(1000,600,100,100);
ellipse(1000,175,100,100);

point(1000,600);
point(1000,175);
point(250,175);
point(250,600);

//endlines

line(30,30,30,750);
line(1245,30,1245,750);





beginShape(LINES);
 
 //fieldlines
 //middle
 vertex(629,30);
 vertex(629,750);
 vertex(639,30);
 vertex(639,750);
 //left
 vertex(420,30);
 vertex(420,750);
 vertex(430,30);
 vertex(430,750);
 //right
 vertex(825,30);
 vertex(825,750);
 vertex(835,30);
 vertex(835,750);
 

 
 
 
 
 endShape();
 
 



}

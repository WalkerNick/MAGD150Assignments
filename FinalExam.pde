//i wanted to make a game, that was one of my goals throughout the year
//i tried making one in one of the earlier sketches and failed, because
//we were given more time i really wanted to make one, its not the best but i tried!




int gameState = 0;




PImage gameover;
//int accuracy;
int ac = 1;
int time;
int speed = 1;

int h = 1;

int score;

boolean shoot;
boolean lose;

float hits;
// different color background everytime the game loads


float shots;
 
ArrayList balls;
 
void setup()
{
  
  size(500,500);
  balls = new ArrayList();
  noCursor();
 
}
 
void draw()
{
  gameover = loadImage("gameover.png");
  if (gameState == 1 )
  if (keyPressed) {
    gameState = 1;
  }
  background(171);
  //used framerate to speed up the game, and to also make it look more smooth
  frameRate(60);
  if(!lose)
  {
    changeDifficulty();
    spawn();
    moveBall();
    Shoot();
    display();
    loss();
    
    text("Score: " + score, 10,15);
    text("Speed: " + speed, 80,15);
    
    if(shots != 0)
    {
      text("Accuracy: " + int(hits) + "/" + int(shots), 150, 15);
    }
    time++;
  }
  else
  {
    background(255);
    //losing scene (one of the 3 scenes)
    image(gameover, 120, 125);
    //text("Accuracy: " + int(hits) + "/" + int(shots), 210, 15);
    text("SCORE: " + score,10,70);
  }
 
  shoot = false;
}
 //trying to get a random background when keyboard is pressed
//void keyPressed(){
//background(c);
//}
void mousePressed()
{
  shoot = true;
  shots ++;
}
class Balls
{
  int x;
  int y;
  int r;
  int maxHealth;
  int health;
  float speed;
   //data for the fallings balls
  Balls(int tx, int tr, float tspeed, int th)
  {
    x = tx;
    r = tr;
    speed = tspeed;
    
  }
   
  void move()
  {
    y += speed;
  }
   
  void display()
  {
    fill(0, 255 ,34);
    ellipse(x,y,r,r);
   
    fill(255,0,0);

    
  }
}
//balls will start falling
void spawn()
{
  if(time == 30)
  {
    time = 0;
    Balls ta = new Balls(int(random(30,470)), int(random(20,40)), speed, h);
    balls.add(ta);
    ta = null;
    ac++;
  }
}
 //falling
void moveBall()
{
    for(int i = 0; i < balls.size(); i++)
  {
    Balls ta = (Balls)balls.get(i);
    ta.move();
    ta = null;
  }
}
 
void display()
{
  for(int i = 0; i < balls.size(); i++)
  {
    Balls ta = (Balls)balls.get(i);
    ta.display();
    ta = null;
  }
  fill(255);
  rect(mouseX-20,500,40,500);
  rect(mouseX-10,470,20,500);
  if(shoot)
  {
    stroke(255);
    line(mouseX,0,mouseX,500);
    stroke(5);
  }
}
 //code for the mouse movement and the fallings balls getting hit
void Shoot()
{
  if(shoot)
  {
    for(int i = 0; i < balls.size(); i++)
    {
      Balls ta = (Balls) balls.get(i);
      if(mouseX < ta.x + ta.r && mouseX > ta.x - ta.r)
      {
        ta.health -= 1;
        if(ta.health <= 0)
        {
          ta = null;
          balls.remove(i);
          score += int(speed) + h;
        }
        hits ++;
        score ++;
      }
    }
  }
}
 
void loss()
{
  for(int i = 0; i < balls.size(); i++)
  {
    Balls ta = (Balls) balls.get(i);
    if(ta.y > 500)
    {
      lose = true;
    }
  }
}
 
 
 //setup for the game to gain speed 
void changeDifficulty()
{
  if(speed < 8 && ac >= 10)
  {
    speed = ac / 10;
  }
  if(h < 3 && ac >= 10)
  {
    h = int(ac / 10);
  }
   
}

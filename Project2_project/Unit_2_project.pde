float speed[] = new float [50];
float StarXs[] = new float [50];
float StarYs[] = new float [50];
PImage Stars;
PImage Starsbackground;
import processing.sound.*;

void setup()
{
 // music
  SoundFile file;
  String Music = "FullofStars.mp3";
  String path;
  
  path = sketchPath(Music);
  file = new SoundFile(this, path);
  file.play();
  
  
  size (800, 800);
  Starsbackground = loadImage ("backgroundUnit2.jpg");
  Stars = loadImage("Stars2.png");
  Stars.resize(100, 100);
  Starsbackground.resize(800, 800);
  
// Stars position and speed
  for (int i = 0; i<50; i++)
  {
    StarXs [i] =random (-100, 800);
    StarYs [i] =random (-150, 375);
  }
  for(int i = 0; i<50; i++)
  {
    speed[i]=random(2,5);
    
  }
}

void draw()
{
  background(Starsbackground);

 
 // Stars apearring and moving
  for (int i = 0; i<50; i++)
  {
    image(Stars, StarXs[i], StarYs[i]); 
    StarXs[i] = StarXs[i] + speed[i];
    StarYs[i] = StarYs[i] + 0.1;
  
   //Stars moving left and right
   if(key ==CODED);
  {
    if(keyCode == RIGHT)
    {
      StarXs[i] = StarXs[i] +speed[i];
    }
    if(keyCode == LEFT)
    {
      StarXs[i] = StarXs[i] - speed[i] - speed[i]-speed[i];
    }
  }
  
    
    // Stars reappearing  
    if (StarXs[i] > width)
  {
    StarXs[i] = -100;
    StarYs[i] = random (0,375);
    
  }
  
    if (StarXs[i] < -width)
    {
      StarXs[i]=800;
      StarYs[i]= random(0,375);
    }
  }  
}

PImage sun ;
PImage earth ;
PImage moon ;
int R=400;
int r=100;
float Angle,angle=0;

void setup (){
  
  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");

}
void draw(){
  background(0);
  //sun
  float sunX=width/2;
  float sunY=height/2;
  imageMode(CENTER);
  image(sun,sunX,sunY);
  //earth
  float earthX=sunX+cos(Angle)*R/2;
  float earthY=sunY-sin(Angle)*R/2;
  imageMode(CENTER);
  image(earth,earthX,earthY);
  float distance=abs(mouseX-sunX);
  if(mouseX<width/2){
  Angle=distance*(PI/300);
  }
  if(mouseX>width/2){
  Angle=-distance*(PI/300);
  }
  
  //moon
  angle+=25;
  float moonX=earthX+cos(angle)*r/2;
  float moonY=earthY+sin(angle)*r/2;
  imageMode(CENTER);
  image(moon,moonX,moonY);

}

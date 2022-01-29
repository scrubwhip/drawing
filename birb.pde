int startx;
int starty;
int w;
int endx;
int endy;



void setup() {
size(600, 600);
frameRate(30);
starty = (int)(Math.random()*600);
startx = (int)(Math.random()*600);
endx = startx;
endy = starty;
background(0);
frameRate(1000);
}



void draw() {

stroke((int)(100+Math.random()*155), (int)(100+Math.random()*155), (int)(100+Math.random()*155));
strokeWeight((int)(Math.random()*3));
line(startx, starty,  endx, endy);
startx = endx;
starty = endy;
endx += (int)(Math.random()*5);
endy += (int)(Math.random()*5);
endx -= (int)(Math.random()*5);
endy -= (int)(Math.random()*5);
if (endx>600){
 endx=600;
}
if (endy>600){
  endy=600;
}

if (endx < 0){
  endx=0;
}
if (endy < 0){
  endy=0;
}
}



void mouseMoved(){
  strokeWeight((int)(Math.random()*3));
  stroke((int)(100+Math.random()*155), (int)(100+Math.random()*155), (int)(100+Math.random()*155));
  starty = mouseY;
  endy = mouseY;
  startx = mouseX;
  endx = mouseX;
 
}

void mousePressed(){
  background(0);
  strokeWeight((int)(Math.random()*3));
  stroke((int)(100+Math.random()*155), (int)(100+Math.random()*155), (int)(100+Math.random()*155));
  starty = mouseY;
  endy = mouseY;
  startx = mouseX;
  endx = mouseX;
}
  

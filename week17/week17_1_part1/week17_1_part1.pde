///week17_1_part1
PImage zongzi;
void setup(){
  size(500,500);
  zongzi = loadImage("zongzi.png");
}
float x,y;
void draw(){
  background(204);
  imageMode(CENTER);
  //image(zongzi,0,0);//好大的粽子1024*1024,畫小一點
  image(zongzi,x,y,100,100);
}

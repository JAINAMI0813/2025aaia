///week17_3_zongzi_part4
PImage zongzi;
void setup(){
  size(500,500);
  zongzi = loadImage("zongzi.png");
}
float []x = new float[100];//可放100個粽子
float []y = new float[100];//學week06陣列
int N = 0;
void draw(){
  background(204);
  imageMode(CENTER);
  for(int i=0;i<N;i++){
    if(x[i]>0){
      image(zongzi,x[i],y[i],100,100);
      y[i]++;//座標往下，代表粽子往下
      if(y[i]>500){//粽子撞到地板(高度是500),要回收粽子第i粽子 把陣列「搬到左邊」
        for(int k=i+1;k<N;k++){
          x[k-1] = x[k];
          y[k-1] = y[k];
      }
      N--;//粽子總數減1
      }
    }
  }
  println(N);
}
void mousePressed(){
  x[N] = mouseX;
  y[N]= mouseY;
  N++;
}

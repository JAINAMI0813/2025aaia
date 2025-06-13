//week17_6_zongzi_part6
//要魚去追粽子
///week17_5_zongzi_part5
///修改自week17_4_zongzi_part4
PImage zongzi, fish, fish2;
void setup()
{
  size(500, 500);
  zongzi = loadImage("zongzi.png"); ///剛剛有把圖檔拉進程式裡
  fish = loadImage("fish.png"); ///多2張圖檔
  fish2 = loadImage("fish2.png");
}
/// float x, y;///只有一顆粽子
float fishX = 250, fishY = 250; //魚的座標
float []x = new float[100]; /// 可放100個粽子
float []y = new float[100]; /// 學 week06 的陣列
int N = 0; /// 一開始有0個粽子
void draw()
{
  background(204);  /// 204灰色
  imageMode(CENTER); /// 畫圖時，圖片的座標，把它設在中心點的座標，不要用左上角
  for (int i=0; i<N; i++)
  {
    if(x[i]>0)
    {
      image(zongzi, x[i], y[i], 100, 100); ///把粽子，畫在 X, Y 的座標
      y[i]++; /// 座標往下，代表粽子往下
      if (y[i]>500)
      {
        for (int k=i+1; k<N; k++) /// 把i+1 i+2 ...搬到i i+1
        {
          x[k-1] = x[k]; ///右邊搬到左邊
          y[k-1] = y[k];
        }
        N--; /// 粽子的數量-1
      }
    }
  }
  int nearestZongzi = -1; ///現在要找一下，哪一個粽子的距離，離魚最近
  float nearestZongziDist = 999999; //很遠的距離
  for (int i=0;i<N;i++)
  {
    if (dist(fishX,fishY,x[i],y[i]) < nearestZongziDist);
    {
      nearestZongziDist = dist(fishX,fishY,x[i],y[i]);
      nearestZongzi = i;
    }
  }
  if (nearestZongzi > -1)
  {
    float dx = x[nearestZongzi] - fishX, dy = y[nearestZongzi] - fishY;
    fishX += dx / 20;
    fishY += dy / 20;
    if ( abs(dx) < 50 && abs(dy) < 50)
    {
      for (int k=nearestZongzi+1; k<N; k++)
      {
          x[k-1] = x[k]; ///右邊搬到左邊
          y[k-1] = y[k];
      }
      N--;
    }
  }
  /// println(N);
  if (mouseX > fishX)
  {
    image(fish, fishX, fishY, 152, 104);///魚往右看
  }
  else
  {
    image(fish2, fishX, fishY, 152, 104); ///魚往左看
  }
}
void mousePressed() ///使用week04的餵飼料的方法，讓粽子往下掉
{
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}

// Global変数
String filename = "generativeart_001";


// セットアップ
void setup() {
  size(800, 800);
  noLoop();
  background(255);
}

// 描画
void draw() {
  drawCircle(50);
}

// 円を描画する関数
void drawCircle(int num){
  background(255);
  noStroke();
  for (int i = 0; i < num; i++) {
    float x = random(width);
    float y = random(height);
    float r = random(30, 110);
    circle(x, y, r);
    fill(0, 50);
  }
}

// マウスをクリックしたら再描画
void mouseClicked() {
  redraw();
}

// Shift+sキーで画像保存
void keyPressed() {
 if (key == 'S')saveFrame(filename + ".png");
}

// Global変数
String filename = "generativeart_002";

// セットアップ
void setup() {
  size(800, 800);
  noLoop();
  background(255);
}

// 描画
void draw() {
  drawLine(50);
}

// 罫線を描画する関数
void drawLine(int num){
  background(255);
  noStroke();
  for (int i = 0; i < num; i++) {
    float x = random(width);
    float y = random(height);
    float l = random(30, 150);
    float w = random(0, 10);
    float x1 = x;
    float y1 = y;
    float x2 = x1;
    float y2 = y1 + l;    
    stroke(0, 50);
    strokeCap(PROJECT);
    strokeWeight(w);
    line(x1, y1, x2, y2);
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

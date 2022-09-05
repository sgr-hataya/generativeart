// Global変数
String filename = "generativeart_003";

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
    float x2 = x1 + l;
    float y2 = y1;    
    stroke(0, 50);
    strokeCap(PROJECT);
    strokeWeight(w);
    line(x1, y1, x2, y2);
  }
  
  // 著作権を表示
  String MESSAGE = "(C)2022 Sgr.Hataya";
  textAlign(CENTER, CENTER);
  textSize(25);
  fill(0);
  text(MESSAGE, width/2, height-30);
}

// キー操作でイベント実行
void keyPressed(){
  // スペースキーを押下で再描画
  if (key == ' '){
    redraw();
  }
  
  // Shift+sキーを押下で画像保存
  if (key == 'S'){
    saveFrame(filename + ".png");
  }
}

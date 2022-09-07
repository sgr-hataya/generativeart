// Global変数
String APPNAME = "generativeart_004";

// セットアップ
void setup() {
  size(800, 800);
  noLoop();
  background(255);
}

// 描画
void draw() {
  drawLine(50);
  copyright();
}

// 罫線を描画する関数
void drawLine(int NUM){
  background(255);
  noStroke();
  for (int i = 0; i < NUM; i++) {
    float X = random(width);
    float Y = random(height);
    float R = random(30, 110);
    float COLOR_R = random(0, 255);
    float COLOR_G = random(0, 255);
    float COLOR_B = random(0, 255);
    color COLOR_RGB = color(COLOR_R, COLOR_G, COLOR_B);
    fill(COLOR_RGB, 50);
    circle(X, Y, R);
  }
}

void copyright(){
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
    int Y = year();
    int M = month();
    int D = day();
    int h = hour();
    int m = minute();
    int s = second();
    String FILENAME = APPNAME + "-" + Y + M + D + h + m + s;
    saveFrame(FILENAME + ".png");
  }
}

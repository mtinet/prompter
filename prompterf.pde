String headline[] = {"RGB LED 테스트 후 브리핑해라!!!!", "안하면 바보", "Learning by Doing", "신대방역으로 나와라!!"};
PFont f;
float x;
color c = color(255);
int index = 0;


void setup() {
  size(1800, 450);
  f = createFont("휴먼중간팸체", 16);
  x = width;
  
}

void draw() {
  background(c);
  
  fill(0);
  textFont(f, 200);
  textAlign(LEFT);
  text(headline[index], x, 300);
  
  x = x - 10;
  
  float w = textWidth(headline[index]);
  
  if(x < - w) {
    x = width;
    index = (index + 1) % headline.length;
  }
}

void mousePressed() {
  c = color(random(255),random(255), random(255));
}  

//Eric Price Paint clone

//RGB values
int R = 0;
int G = 0;
int B = 0;

void setup() {
  //screen
  size (1920, 1200);
  background(255);
}

void draw() {
  //color selection area 
  //button for B(blue) to be darker
  fill(0, 0, 255);
  rect(0, 0, width, height/11);
  //button for B to be lighter
  fill(0, 0, 125);
  rect(0, 0, width/1.2, height/11);
  //button for G(green) to be darker
  fill(0, 255, 0);
  rect(0, 0, width/1.5, height/11);
  //button for G to be lighter 
  fill(0, 125, 0);
  rect(0, 0, width/2, height/11);
  //button for R(red) to be darker 
  fill(255, 0, 0);
  rect(0, 0, width/3, height/11);
  //button for R to be lighter
  fill(125, 0, 0);
  rect(0, 0, width/6, height/11);

  //current color display + reset
  //bottom button area
  fill(#838383);
  rect(0, height/1.2, width, height/6);
  //RGB display area
  fill(#C9C9C9);
  rect(0, height/1.2, width/2, height/6);

  //RGB value display
  textSize(width/100);
  fill(0);
  text("R =", width/40, height/1.16); 
  text("G =", width/40, height/1.14);
  text("B =", width/40, height/1.12);
  text(R, width/20, height/1.16); 
  text(G, width/20, height/1.14);
  text(B, width/20, height/1.12);

  //mouse pressed conditions
  if (mousePressed) {
    strokeWeight(1);
    stroke(R, G, B);
    fill(R, G, B);
    ellipse(mouseX, mouseY, 10, 10);
  }
}

void mouseClicked() {
  //increase b value if button pressed
  if (width/1.2<mouseX && mouseX<width/1 && mouseY<height/10) {
    B = B + 5;
  }
  //decrease b value if button pressed
  if (width/1.5<mouseX && mouseX<width/1.2 && mouseY<height/10) {
    B = B - 5;
  }
  //increase g value if button pressed
  if (width/2<mouseX && mouseX<width/1.5 && mouseY<height/10) {
    G = G + 5;
  }
  //decrease g value if button pressed
  if (width/3<mouseX && mouseX<width/2 && mouseY<height/10) {
    G = G - 5;
  }
  //increase r value if button pressed
  if (width/6<mouseX && mouseX<width/3 && mouseY<height/10) {
    R = R + 5;
  }
  //decrease r value if button pressed
  if (width/width<mouseX && mouseX<width/6 && mouseY<height/10) {
    R = R - 5;
  }
}

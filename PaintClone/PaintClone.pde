//Eric Price Paint Clone V6

//RGB values
int R = 0;
int G = 0;
int B = 0;
//Brush Size
int Size = 10; 
//Strings for text
String EPPC = "Eric Price Paint Clone V6";
String BH = "Blue +";
String BL = "Blue -";
String GH = "Green +";
String GL = "Green -";
String RH = "Red +";
String RL = "Red -";

void setup() {
  //screen
  size (1680, 950);
  background(255);
}

void draw() {

  //color selection area 
  stroke(0);
  fill(0);

  //button for B(blue) to be higher
  fill(0, 0, 255);
  rect(width/1.2, 0, width/6, height/11);
  textSize(width/30);
  fill(0);
  text(BH, width/1.2, height/11);
  //button for B to be lower
  fill(0, 0, 125);
  rect(width/1.5, 0, width/6, height/11);
  textSize(width/30);
  fill(0);
  text(BL, width/1.5, height/11);
  //button for G(green) to be higher
  fill(0, 255, 0);
  rect(width/2, 0, width/6, height/11);
  textSize(width/30);
  fill(0);
  text(GH, width/2, height/11);
  //button for G to be lower 
  fill(0, 125, 0);
  rect(width/3, 0, width/6, height/11);
  textSize(width/30);
  fill(0);
  text(GL, width/3, height/11);
  //button for R(red) to be higher 
  fill(255, 0, 0);
  rect(width/6, 0, width/6, height/11);
  textSize(width/30);
  fill(0);
  text(RH, width/6, height/11);
  //button for R to be lower
  fill(125, 0, 0);
  rect(0, 0, width/6, height/11);
  textSize(width/30);
  fill(0);
  text(RL, 0, height/11);

  //current color display + clear button

  //RGB value display
  fill(#C9C9C9);
  rect(0, height/1.2, width/3, height/6);
  textSize(width/100);
  fill(R, 0, 0);
  text("R =", width/40, height/1.15); 
  text(R, width/20, height/1.15);
  fill(0, G, 0);
  text("G =", width/40, height/1.10);
  text(G, width/20, height/1.10);
  fill(0, 0, B);
  text("B =", width/40, height/1.05);
  text(B, width/20, height/1.05);
  fill(0);

  //Box that displays current color  
  strokeWeight(3);
  fill(R, G, B);
  rect(width/12, height/1.15, width/40, height/12);
  stroke(0);
  strokeWeight(1);

  //Thing to change brush size
  fill(#6C6C6C);
  rect(width/4.2, height/1.16, width/13.5, height/9);
  fill(#393838);
  rect(width/6, height/1.16, width/13.5, height/9);

  //fancy crap AKA my name print clone blah blah 
  fill(#838383);
  rect(width/3, height/1.2, width/3, height/6);
  textSize(width/35);
  fill(0);
  text(EPPC, width/3, height/1.2, width/3, height/6);

  //clear button
  fill(#C9C9C9);
  rect(width/1.5, height/1.2, width/3, height/6);
  textSize(width/20);
  fill(0);
  text("Clear all", width/1.35, height/1.05);

  //stop color values from being above 255 or negative 
  if (R > 256) {
    R = 255;
  }
  if (R < -1) {
    R = 0;
  }
  if (G > 256) {
    G = 255;
  }
  if (G < -1) {
    G = 0;
  }
  if (B > 256) {
    B = 255;
  }
  if (B < -1) {
    B = 0;
  }

  //drawing
  if (mousePressed) {
    strokeWeight(1);
    stroke(R, G, B);
    fill(R, G, B);
    ellipse(mouseX, mouseY, Size, Size);
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
  //clicking clear button 
  if (mouseX > width/1.5 && mouseY > height/1.2 && mouseX < width && mouseY < height) {
    background(255);
  }
  //increase brush size button
  if(width/6<mouseX && height/1.16<mouseY && width/4.2>mouseX){
    Size = Size + 1;
  } 
  //decrease brush size button
   if(width/4.2<mouseX && height/1.16<mouseY && width/3.2>mouseX){
    Size = Size - 1;
  } 
}

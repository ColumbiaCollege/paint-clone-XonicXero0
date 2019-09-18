//Eric Price Paint clone

int R = 0;
int G = 0;
int B = 0;

//screen size
void setup() {
  size (1920, 1200);
  background(255);
}

void draw() {
  //color selection area 
   //button for B(blue) to be darker
  fill(0,0,255);
  rect(0, 0, width, height/10);
   //button for B to be lighter
  fill(0,0,125);
  rect(0, 0, width/1.2, height/10);
   //button for G(green) to be darker
  fill(0,255,0);
  rect(0, 0, width/1.5, height/10);
  //button for G to be lighter 
  fill(0,125,0);
  rect(0, 0, width/2, height/10);
  //button for R(red) to be darker 
  fill(255,0,0);
  rect(0, 0, width/3, height/10);
  //button for R to be lighter
  fill(125,0,0);
  rect(0, 0, width/6, height/10);

//increase b
if (mousePressed && width/1.2<mouseX && mouseX<width/1 && mouseY<height/10){
     B = B + 5;
}
//decrease b
if (mousePressed && width/1.5<mouseX && mouseX<width/1.2 && mouseY<height/10){
     B = B - 5;
}
//increase g
if (mousePressed && width/2<mouseX && mouseX<width/1.5 && mouseY<height/10){
     G = G + 5;
}
//decrease g
if (mousePressed && width/3<mouseX && mouseX<width/2 && mouseY<height/10){
     G = G - 5;
}
//increase r
if (mousePressed && width/6<mouseX && mouseX<width/3 && mouseY<height/10){
     R = R + 5;
}
//decrease r
if (mousePressed && width/width<mouseX && mouseX<width/6 && mouseY<height/10){
     R = R - 5;
  }
  
//mouse pressed conditions
if (mousePressed) {
  
  strokeWeight(0);
  fill(R,G,B);
  ellipse(mouseX, mouseY, 10, 10);
  
} 
  
  
}

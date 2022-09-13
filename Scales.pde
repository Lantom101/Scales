void setup() {
  size(600, 600);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
  background(0,0,0);
}

void draw() {
  boolean shift = true;
  
  for(int y = 600; y >= -30; y -= 30){
    for (int x = 600; x >= -30; x -=30){
      if (shift == true)
        scale(x+15,y);
       else
         scale(x,y);
  }
    if (shift == true)
      shift = false;
      else
      shift = true;
    }
}

void scale(int x, int y) {
  int r =(int)(Math.random()*256);
  fill(r,r,r);
  stroke(0);
  ellipse(x+15,y+25,30,25);
  noStroke();
  rect(x,y,30,25);
}

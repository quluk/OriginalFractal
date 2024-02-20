
int maxDepth = 4; 
float scaleFactor = 0.6; 
void setup() {
  size(400,400);
  background(255);
  noFill();
  drawDesign(width / 2, height / 2, 200, maxDepth); 
}
void drawDesign(float x, float y, float size, int depth) {
  if (depth == 0) {
    return ;
      } 
  else {
    for (int i = 0; i < 6; i++) {
      float newX = x + (size * scaleFactor) * cos(TWO_PI / 6 * i);
      float newY = y + (size * scaleFactor) * sin(TWO_PI / 6 * i);
      ellipse(newX, newY, size * scaleFactor, size * scaleFactor); //circle drawerrrr
      drawDesign(newX, newY, size * scaleFactor, depth - 1); //recursionsnsnsndnsn
              }
      }
}

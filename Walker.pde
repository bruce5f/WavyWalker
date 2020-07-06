static final int X = 0, Y = 1, A = 2, R = 3, S = 4;

static final int randomCount = 5000;
float[] staticRandom = new float[randomCount];


static final int lineCount = 1000;
float[][] lineVector = new float[lineCount][5];

void setup() {
  size(1000, 1000);
  background(255);
  fill(255);
  strokeWeight(1);
  noStroke();


  for (int i = 0; i < randomCount; i++) {
    staticRandom[i] = random(1);
  }

  for (int i = 0; i < lineCount; i++) {
    lineVector[i][X] = 1;
    lineVector[i][Y] = 1;
    lineVector[i][A] = random(PI*2); 
    lineVector[i][R] = 1;
    lineVector[i][S] = 1;
  }
}

float t = 0.0;
void draw() {
  fill(0,0,0,55);
  for (int i = 0; i < lineCount; i++) {
    
    rect(width/2 + lineVector[i][X], height/2 + lineVector[i][Y], lineVector[i][S], lineVector[i][S]);
    
    lineVector[i][X] += lineVector[i][R]*cos(lineVector[i][A] - PI/2);
    lineVector[i][Y] += lineVector[i][R]*sin(lineVector[i][A] - PI/2);
    lineVector[i][S] += 0.01*(random(2) - 1);
    lineVector[i][A] += 0.04*sin(t);
  }
  

  t+=0.04;
  
  /*if (t > 2)
    t = 0;
  */
}

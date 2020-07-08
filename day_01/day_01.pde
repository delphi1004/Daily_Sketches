int resolution = 200;
float radious = 100;

PVector [] position = new PVector[resolution];

void setup() {

  size(1500, 900);

  pixelDensity(2);
  background(30);

  stroke(255);
  strokeWeight(1);

  //noFill();
  noStroke();

  colorMode(HSB, 360, 100, 100);

  prepareData();
}

void prepareData() {

  float temp = 0;

  for (int i=0; i<resolution; i++) {

    position[i] = new PVector(10, 50, 10);
  }

  println(position[0].x + " "+position[0].z);

  for (int y=10; y<height-10; y+=21) {

    for (int i=1; i<resolution; i++) {

      position[i].z  = 50 + sin(i * 0.01 + temp) * 40;
      position[i].x  = (position[i-1].x + position[i-1].z/2 + position[i].z/2)+ random(1, 5);
      position[i].y = y;

      temp += 0.01;

      fill(random(50, 70), 100, 100);

      ellipse(position[i].x, position[i].y, position[i].z, position[i].z);
    }
  }
}

void draw() {

  fill(30, 10);

  rect(0, 0, width, height);

  //prepareData();

  for (int i=0; i<10; i++) {

    //calcNewPosition();
  }

  noLoop();
}

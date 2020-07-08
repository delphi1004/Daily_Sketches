
int MAX_PARTICLE = 1000;
int iterationCount  = 0;
float noiseScale = 500, noiseStrength = -5; 
ArrayList<JLParticle> particles;


void setup() {

  size(800, 800);

  background(30);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  smooth();

  init();
}

void init() {

  particles = new ArrayList<JLParticle>();

  for (int i=0; i<MAX_PARTICLE; i++) {

    particles.add(new JLParticle());
  }
}

void draw() {
  

  //background(30);

  for (int j=0; j<1; j++) {

    for (int i=0; i<MAX_PARTICLE; i++) {

      particles.get(i).draw();
    }
  }

  if (iterationCount > 500) {

    iterationCount = 0;

    noiseStrength -= 10;
    noiseScale -= 10;

    println("noiseStrength "+noiseStrength + " , "+"noiseScale "+noiseScale);
  }

  //iterationCount++;
}

void keyPressed(){
  
  saveFrame("../results/day_02/line-######.png");
  
}

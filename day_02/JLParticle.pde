
class JLParticle {

  PVector pos;
  PVector oldPos;
  color myColor;
  float stepSize, angle;

  JLParticle() {

    myColor = color(random(60, 100), 100, 100, 255);
    
    pos    = new PVector(random(width), random(height));
    oldPos = new PVector();

    setPosition();
  }

  void setPosition() {

    pos.x = random(width);
    pos.y = random(height);
    
    //pos.x = random(400,500);
    //pos.y = random(400,600);
    
    oldPos.set(pos);
    
    stepSize = random(1, 50);
  }

  void draw1() {

    float temp;

    angle = noise(pos.x/noiseScale, pos.y/noiseScale);

    temp = angle;

    myColor = color(map(angle, 0, 1, 0, 100), 100, 100, 5);

    angle *= noiseStrength;

    pos.x += cos(angle) * stepSize;
    pos.y += sin(angle) * stepSize;

    if (pos.x > width || pos.x < 0 || pos.y > height || pos.y < 0) {

      setPosition();
    }

    stroke(myColor);
    fill(myColor);
    point(pos.x,pos.y);
    
    temp = oldPos.dist(pos);
    
    strokeWeight(temp * 0.01);

    //ellipse(pos.x, pos.y, temp,temp*10);
  }
  
   void draw2() {

    float temp;

    angle = noise(pos.x/noiseScale, pos.y/noiseScale);

    temp = angle;

    myColor = color(map(angle, 0, 1, 0, 200), 100, 100, 5);

    angle *= noiseStrength;

    pos.x += cos(angle) * stepSize;
    pos.y += sin(angle) * stepSize;

    if (pos.x > width || pos.x < 0 || pos.y > height || pos.y < 0) {

      setPosition();
    }

    stroke(myColor);
    fill(myColor);
    
    temp = oldPos.dist(pos);
    
    strokeWeight(temp *0.001);
            
    line(oldPos.x,oldPos.y,pos.x,pos.y);
    
    if (random(0,10) > 9)
    ;
    //oldPos.set(pos);

   }

    



  void draw() {

    //draw1();
    draw2();
  }
}

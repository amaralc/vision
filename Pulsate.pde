//  This file describes a Bubble class which allows the user to draw a circle of given mean 
// diameter in the center of the screen and let it pulsate as described in method "Pulsate"
// at "PulseFrequency" frequency and "PulseAmplitude" amplitude. 

Bubble Bubble1;

void setup(){
  frameRate(30);
  size(600,300);
  Bubble1 = new Bubble(50,1.75,25);
}

void draw(){
  background(255);
  Bubble1.Pulsate();
}

class Bubble{

  // Attributes
  float BubbleMeanDiameter; 
  float PulseFrequency;
  float PulseAmplitude;
  
  // Constructor
  Bubble(float BubbleMeanDiameter_,float PulseFrequency_, float PulseAmplitude_){
    BubbleMeanDiameter = BubbleMeanDiameter_;
    PulseFrequency = PulseFrequency_;
    PulseAmplitude = PulseAmplitude_;
  } 
  
  // Methods
  void Pulsate(){
    // Change diameter
    // Update code to fix the framerate and sin functions
    float BubbleDiameter = BubbleMeanDiameter + PulseAmplitude*sin(2*PI*PulseFrequency*millis()/1000f);
    
    // Update
    stroke(255);
    fill(0);
    ellipse(mouseX,mouseY,BubbleDiameter,BubbleDiameter);    
  }
}

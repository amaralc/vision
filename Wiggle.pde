Bubble MyBubble1;

void setup(){
  size(600,300);
  frameRate(60);
  MyBubble1 = new Bubble(50,1,width/2,height/2);
}

void draw(){
  background(255);
  MyBubble1.Wiggle();}
class Bubble{
  
  // Atributes
  float Amplitude; // pixels
  float Frequency; // Hz
  int Initial_XPosition;
  int Initial_YPosition;
  int XPosition;
  int YPosition;
  
  // Constructor
  Bubble(float Amplitude_, float Frequency_, int Initial_XPosition_, int Initial_YPosition_){
    Amplitude = Amplitude_;
    Frequency = Frequency_;
    Initial_XPosition = Initial_XPosition_;
    Initial_YPosition = Initial_YPosition_;
  }
  
  // Methods
  void Wiggle(){
    XPosition = round(Initial_XPosition + Amplitude*cos(2*PI*Frequency*millis()/1000f));
    YPosition = round(Initial_YPosition + Amplitude*sin(2*PI*Frequency*millis()/1000f));    
    stroke(255);
    fill(100);
    ellipse(XPosition,YPosition,15,15);    
  }
}
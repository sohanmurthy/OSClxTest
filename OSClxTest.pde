/*
Testing P3LX with a TouchOSC interface
*/

import oscP5.*;
import netP5.*;

final static int INCHES = 1;
final static int FEET = 12*INCHES;


OscP5 oscP5;

Model model;
P3LX lx;
UI3dComponent pointCloud;

void setup(){
  
  model = new Model();
  lx = new P3LX(this, model);
  
  //listen to OSC on port 8000
  oscP5 = new OscP5(this,8000);
  
  lx.setPatterns(new LXPattern[] {
    new OSCTestPattern(lx),
  });
  
  
  //render model
  size(800, 600, P3D);
  lx.ui.addLayer(
    new UI3dContext(lx.ui) 
    .setCenter(model.cx, model.cy, model.cz)
    .setRadius(8*FEET)
    .setTheta(PI/9)
    .setPhi(PI/24)    
    .addComponent(pointCloud = new UIPointCloud(lx, model).setPointSize(4))
  );
  
}


void draw(){
  background(#292929);
}
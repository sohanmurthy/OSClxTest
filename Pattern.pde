/***************************************************************

A simple ellipse controlled by TouchOSC in the "Simple" layout -

- fader1 controls saturation of ellipse
- fader2 controls size of ellipse
- fader3 controls X-position of ellipse
- fader4 controls Y-position of ellipse
- fader5 controls hue of ellipse

****************************************************************/

class OSCTestPattern extends LXPattern {
  
  OSCTestPattern(LX lx){
   super(lx); 
   addLayer(new Ellipse(lx));
   
  }
  
class Ellipse extends LXLayer {
  
  Ellipse(LX lx) {
    super(lx);
  }
  
  public void run(double deltaMs) {
    for (LXPoint p : model.points) {
      float b = 100 - 100/(v_fader2*100)*dist(p.x, p.y, (v_fader3*model.xMax), (v_fader4*model.yMax));     
      if(b > 0){
        addColor(p.index, LXColor.hsb(
        (v_fader5*360),
        (v_fader1*100),
        b));
      }
    }
  }
  
 }
  
  public void run(double deltaMs){
   setColors(#000000); 
  }
  
}
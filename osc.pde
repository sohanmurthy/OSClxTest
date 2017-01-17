//listen for OSC events and create values for buttons in the "Simple" layout

//values for osc
float v_fader1 = 0.0f;
float v_fader2 = 0.0f;
float v_fader3 = 0.0f;
float v_fader4 = 0.0f;
float v_fader5 = 0.0f;
float v_toggle1 = 0.0f;
float v_toggle2 = 0.0f;
float v_toggle3 = 0.0f;
float v_toggle4 = 0.0f;


void oscEvent(OscMessage theOscMessage) {

    String addr = theOscMessage.addrPattern();
    float  val  = theOscMessage.get(0).floatValue();
    
    if(addr.equals("/1/fader1"))        { v_fader1 = val; }
    else if(addr.equals("/1/fader2"))   { v_fader2 = val; }
    else if(addr.equals("/1/fader3"))   { v_fader3 = val; }
    else if(addr.equals("/1/fader4"))   { v_fader4 = val; }
    else if(addr.equals("/1/fader5"))   { v_fader5 = val; }
    else if(addr.equals("/1/toggle1"))  { v_toggle1 = val; }
    else if(addr.equals("/1/toggle2"))  { v_toggle2 = val; }
    else if(addr.equals("/1/toggle3"))  { v_toggle3 = val; }
    else if(addr.equals("/1/toggle4"))  { v_toggle4 = val; }
    
    //print out any address and their value for debugging purposes
    println(addr, val);
}
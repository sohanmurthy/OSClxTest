##TouchOSC + P3LX example


Controlling a [P3LX](https://github.com/heronarts/P3LX) installation in Processing with OSC via oscP5 and TouchOSC

###Installation

1. Download [TouchOSC](http://hexler.net/software/touchosc) from the App Store or Google Play. It's $5, but worth it. There are a few free apps out there that can communicate via the Open Sound Control protocol, but TouchOSC seems to be the best.
2. Install `oscP5` Processing 3 library (Sketch -> Import Library -> Add Library -> search for `oscP5`)
3. Clone this repo
4. Connect your device to your host IP address via TouchOSC's settings. 
5. Use the "Simple" layout and run the sketch!

You can play with the rendered ellipse with the following controls.

- `fader1` controls saturation of ellipse
- `fader2` controls size of ellipse
- `fader3` controls X-position of ellipse
- `fader4` controls Y-position of ellipse
- `fader5` controls hue of ellipse

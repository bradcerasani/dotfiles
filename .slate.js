var pushRight = slate.operation("push", {
  "direction": "right",
  "style": "bar-resize:screenSizeX/2"
});

var pushLeft = slate.operation("push", {
  "direction": "left",
  "style": "bar-resize:screenSizeX/2"
});

var pushLeftThird = slate.operation("push", {
  "direction": "left",
  "style": "bar-resize:screenSizeX/1.333"
});

var fullscreen = slate.operation("move", {
  "x": "screenOriginX",
  "y": "screenOriginY",
  "width": "screenSizeX",
  "height": "screenSizeY"
});

var tweetbot = slate.operation("push", {
  "direction": "right"
});

slate.bind("up:ctrl,alt,cmd,shift", function(win) {
  win.doOperation(fullscreen);
});

slate.bind("left:ctrl,alt,cmd,shift", function(win) {
  win.doOperation(pushLeft);
});

slate.bind("3:ctrl,alt,cmd,shift", function(win) {
  win.doOperation(pushLeftThird);
});

slate.bind("right:ctrl,alt,cmd,shift", function(win) {
  if (win.app().name() == "Tweetbot") {
    win.doOperation(tweetbot);
  } else {
    win.doOperation(pushRight);
  }
});

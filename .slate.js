var pushRight = slate.operation("push", {
  "direction": "right",
  "style": "bar-resize:screenSizeX/2"
});

var pushLeft = slate.operation("push", {
  "direction": "left",
  "style": "bar-resize:screenSizeX/2"
});

var fullscreen = slate.operation("move", {
  "x": "screenOriginX",
  "y": "screenOriginY",
  "width": "screenSizeX",
  "height": "screenSizeY"
});

slate.bind("up:ctrl,alt,cmd,shift", function(win) {
  win.doOperation(fullscreen);
});

slate.bind("down:ctrl,alt,cmd,shift", function(win) {
  win.doOperation(fullscreen);
});

slate.bind("left:ctrl,alt,cmd,shift", function(win) {
  win.doOperation(pushLeft);
});

slate.bind("right:ctrl,alt,cmd,shift", function(win) {
  win.doOperation(pushRight);
});

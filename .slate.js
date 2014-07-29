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

slate.bind("1:ctrl", function(win) {
  win.doOperation(fullscreen);
  var appName = win.app().name();
});

slate.bind("2:ctrl", function(win) {
  win.doOperation(pushLeft);
});

slate.bind("3:ctrl", function(win) {
  win.doOperation(pushRight);
});

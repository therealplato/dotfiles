var FULL = {"x": "screenOriginX", "y": "screenOriginY", "width": "screenSizeX", "height": "screenSizeY"};
var fullscreen = slate.op("move", FULL);
var HALF = "bar-resize:screenSizeX/2";
var toL = slate.op("push", {"direction": "left", "style": HALF });
var toR = slate.op("push", {"direction": "right","style": HALF });
var fL = slate.op("focus", {"direction": "left" });
var fR = slate.op("focus", {"direction": "right" });


slate.bindAll({
  ".:alt": fullscreen,
  ",:alt", toggleMinimized,
  "/:alt", slate.op("show", {"app": "Terminal"}),
  "h:alt": toL, // win to left half
  "l:alt": toR, // win to right half
  "j:alt": fL,  // focus leftwards
  "k:alt": fR,  // focus rightwards
  // "q:alt,shift": slate.op("relaunch"), // doesn't appear to resource .slate.js?
  // "/:alt:shift", slate.op("shell", "open -a Terminal.app"), // wrong invokation for new window
});

function toggleMinimized(win){
var last = "";
  var current = win.app().name();
  if( last != "") { // we remembered something to switch 
    win.doOperation(slate.op("show", {"app": last}));
    last = ""
  } else {
    last = current;
    win.doOperation(slate.op("hide", {"app": "current" }));
  }
};

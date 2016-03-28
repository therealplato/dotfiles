(function(){
var FULL = {"x": "screenOriginX", "y": "screenOriginY", "width": "screenSizeX", "height": "screenSizeY"};
var fullscreen = slate.op("move", FULL);
var HALF = "bar-resize:screenSizeX/2";
var opPushL = slate.op("push", {"direction": "left", "style": HALF });
var opPushR = slate.op("push", {"direction": "right","style": HALF });
var opFocusLeft = slate.op("focus", {"direction": "left" });
var opFocusRight = slate.op("focus", {"direction": "right" });

var toNewScreenFullscreen = function(win){
  var WINS = [];
}

//slate.source("~/.slatetile.js")
//place and focus new window at index 0:
//place and focus new window to the left of focused
//
//place and focus new window to the right of focused

slate.bindAll({
  ";:alt": fullscreen,
  ".:alt": toggleMinimized,
  "/:alt": slate.op("show", {"app": "Terminal"}),
  "h:alt": opPushL, // win to left half
  "l:alt": opPushR, // win to right half
  "j:alt": opFocusLeft,  // focus leftwards
  "k:alt": opFocusRight,  // focus rightwards
  //"q:alt,shift": slate.op("relaunch"), // doesn't appear to resource .slate.js?
  //"/:alt:shift": spawnTerm,
});

var lastToggledOut = "";
function toggleMinimized(win){
  var current = win.app().name();
  if( lastToggledOut != "") { // we remembered something to switch 
    win.doOperation(slate.op("show", {"app": lastToggledOut}));
    win.doOperation(slate.op("focus", {"app": lastToggledOut}));
    lastToggledOut = "";
  } else {
    lastToggledOut = current;
    win.doOperation(slate.op("hide", {"app": "current" }));
  }
};

function spawnTerm(win) {
  slate.shell("open -a Terminal.app . &> ~/.slate.err.log") // wrong, help?
};
})();

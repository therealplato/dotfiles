// Constants
var FULL = {"x": "screenOriginX", "y": "screenOriginY", "width": "screenSizeX", "height": "screenSizeY"};
var HALF = "bar-resize:screenSizeX/2";

// Operations
var opFullHere = slate.op("move", FULL);
var opPushL = slate.op("push", {"direction": "left", "style": HALF });
var opPushR = slate.op("push", {"direction": "right","style": HALF });
var opFocusLeft = slate.op("focus", {"direction": "left" });
var opFocusRight = slate.op("focus", {"direction": "right" });

// Binds
slate.bindAll({
  ";:alt": opFullHere,
  ".:alt": toggleMinimized,
  "/:alt": slate.op("show", {"app": "Terminal"}),
  "h:alt": opPushL, // win to left half
  "l:alt": opPushR, // win to right half
  "j:alt": opFocusLeft,  // focus leftwards
  "k:alt": opFocusRight,  // focus rightwards
  "0:alt": place0,      // move window to 0 index
  //"q:alt,shift": slate.op("relaunch"), // doesn't appear to resource .slate.js?
  //"/:alt:shift": spawnTerm,
});

// State variables
var lastToggledOut = "";
var I = null; // Focus index
var N = 0;   // visible window count
var ww = []; // window widths: 0 fullscreen, 1 half screen
var wins = []; // visible window objects

// Helper functions
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
}

function spawnTerm(win) {
  slate.shell("open -a Terminal.app . &> ~/.slate.err.log"); // wrong, help?
}

// Layout functions
function place0(win) {
  var tmp = [win].concat(
    wins.slice(0,I-1),
    wins.slice(I,N)
  );
  wins = wins[I].concat(tmp);

  ww = [0].concat(
    ww.slice(0,I-1),
    ww.slice(I,N)
  );
  I=0;
  //relay()
}
/*
function relay(){
  var tWidth = 0;        // count from left in units of half screen widths
  var tWidthPx = 0;
  _.each(ww, function(width, j){
    var screenObject = slate.screenUnderPoint({"x": tWidthPx+1, "y": "screenOriginY"});
    //var localWidth = screenObject.width()
    switch(width) {
      case 2: //full
      var pos = {"x": "screenOriginX+"+tWidthPx, "y": "screenOriginY", "width": "screenSizeX", "height": "screenSizeY"};
      var m = slate.op("move", pos); break;
      case 1: //half
      var pos = {"x": "screenOriginX+"+tWidthPx+, "y": "screenOriginY", "width": "screenSizeX/2", "height": "screenSizeY"};
      var m = slate.op("move", pos); break;
      default: throw "unexpected window width"
    }
    tWidth += width;
    // tWidthPx += screenObject.width()
  });

  //wins[i].app().name()
}

var toNewScreenFullscreen = function(win){
}

//slate.source("~/.slatetile.js")
// to tile:
//place and focus new window at index 0:
//place and focus new window to the left of focused
//place and focus new window to the right of focused
//
*/

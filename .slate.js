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
  "/:alt,shift": spawnTerm,
});


// State variables
var lastToggledOut = "";

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
  slate.shell("/usr/bin/open -a /Applications/Utilities/Terminal.app /Users");
}


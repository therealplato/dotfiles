// Constants
var FULL = {"x": "screenOriginX", "y": "screenOriginY", "width": "screenSizeX", "height": "screenSizeY"};
var HALF = "bar-resize:screenSizeX/2";

// Operations
var opFullHere = slate.op("move", FULL);
var opPushL = slate.op("push", {"direction": "left", "style": HALF });
var opPushR = slate.op("push", {"direction": "right","style": HALF });
var opFocusLeft = slate.op("focus", {"direction": "left" });
var opFocusRight = slate.op("focus", {"direction": "right" });
var opThrow1 = slate.op("throw", { "screen" : 0 });
var opThrow2 = slate.op("throw", { "screen" : 1 });
var opThrow3 = slate.op("throw", { "screen" : 2 });

// Binds
slate.bindAll({
  ";:alt": opFullHere,
  "1:alt": opThrow1, // win to monitor 1
  "2:alt": opThrow2, // win to monitor 2
  "3:alt": opThrow3, // win to monitor 3
  "/:alt": slate.op("show", {"app": "Terminal"}),
  "h:alt": opPushL, // win to left half
  "l:alt": opPushR, // win to right half
  "j:alt": opFocusLeft,  // focus leftwards
  "k:alt": opFocusRight,  // focus rightwards
  "/:alt,shift": spawnTerm,
});


function spawnTerm(win) {
  // slate.shell("/usr/bin/open -a /Applications/Hyper.app/Contents/MacOS/Hyper /Users/isaac");
  // slate.shell("/usr/bin/open -a /Applications/Utilities/Terminal.app /Users");
  // slate.shell("/usr/bin/open -an /Applications/iTerm.app");
  slate.shell("/Applications/iTerm.app/Contents/MacOS/iTerm2")
}

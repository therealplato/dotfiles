var HALF = "bar-resize:screenSizeX/2";
var FULL = {"x": "screenOriginX", "y": "screenOriginY", "width": "screenSizeX", "height": "screenSizeY"};
var fullscreen = slate.op("move", FULL);
var toL = slate.op("push", {"direction": "left", "style": HALF });
var toR = slate.op("push", {"direction": "right","style": HALF });
var min = slate.op("hide", {"applications": "'current'" });
var fL = slate.op("focus", {"direction": "left" });
var fR = slate.op("focus", {"direction": "right" });


slate.bindAll({
  "q:alt,shift": slate.op("relaunch"),
  //"/:alt": slate.op("hide", {"app": "current" }),
  //"/:alt": hide,
  ".:alt": fullscreen,
  "h:alt": toL,
  "l:alt": toR,
  "w:alt": slate.op("hint"),
  "j:alt": fL,
  "k:alt": fR,
});

function hide(win){
  //slate.op("hide", {"app": "current" })
  win.doOperation(slate.op("hide", {"app": "current" }));
}

function toggleMinimized(win){
var last = "";
  var current = win.app().name();
  slate.log(current);
  //return win.doOperation(slate.op("hide", {"app": "current" }));

  slate.log("******************toggleMinimized");
  if( last != "") { // we remembered something to switch 
    win.doOperation(slate.op("show", {"app": last}));
    last = ""
    /*
    slate.eachapp(function(app) {
      app.eachwindow(function(w) {
        if(w.app().name() == last){
        }
      })
    })
    */
  } else {
    last = current;
    win.doOperation(slate.op("hide", {"app": "current" }));
  }
};

slate.bind(",:alt", toggleMinimized)

slate.bind("t:alt", slate.op("show", {"app": "Terminal"}));


/*

  if(!last) {
    last = win.app().name();
    //slate.op("hide", {"app:": "current" });
    win.doOperation("move", FULL);
    //win.doOperation("hide", {"app:": "current" });
  }

*/

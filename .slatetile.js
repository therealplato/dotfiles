// Thx http://nompute.com/posts/2013/05/03/slate_tiling_window_manager/
var retile = function(windowObject) {
  var windows = [];
  slate.eachapp(function(app) {
    app.eachwindow(function(win) {
      if (win.isMinimizedOrHidden()) return;
      if (null == win.title() || win.title() === "") return;
      windows.push(win);
    });
  });

  var ss          = s.rect();
  var windowSizeX = ss.width * 0.4;
  var windowSizeY = ss.height / (windows.length - 1);
  var winPosY     = 0;

  for (i = 0; i < windows.length; i++) {
    w = windows[i];

    if (w.title() == windowObject.title()) {
      mainWidth = (windows.length > 1) ? "screenSizeX*0.6" : "screenSizeX";

      w.doOperation("move", {
        "x": "screenOriginX",
        "y": "screenOriginY",
        "width": mainWidth,
        "height": "screenSizeY"
      });
    }
    else {
      w.doOperation("move", {
        "x": "screenSizeX*0.6",
        "y": winPosY,
        "width": windowSizeX,
        "height": windowSizeY
      });

      winPosY += windowSizeY;
    }
  }
}


var r = function(event, win) { retile(win); };
var ee = ["windowOpened", "windowClosed", "appOpened", "appClosed", "appHidden", "appUnhidden"]
_.each(ee , function(e){ slate.on(e,r) }
)

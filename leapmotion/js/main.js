(function() {
  var controller;

  controller = new Leap.Controller();

  controller.on('connect', function() {
    return console.log("Successfully connected.");
  });

  controller.on('deviceConnected', function() {
    return console.log("A Leap device has been connected.");
  });

  controller.on('frame', function(frame) {
    if (frame.fingers.length > 0) {
      return frame.fingers.forEach(function(finger) {
        return console.log(finger.direction);
      });
    }
  });

  controller.on('deviceDisconnected', function() {
    return console.log("A Leap device has been disconnected.");
  });

  controller.connect();

}).call(this);

(function() {
  var controller;

  controller = new Leap.Controller();

  controller.on('connect', function() {
    return console.log("Successfully connected.");
  });

  controller.on('deviceConnected', function() {
    return console.log("A Leap device has been connected.");
  });

  controller.on('deviceDisconnected', function() {
    return console.log("A Leap device has been disconnected.");
  });

  controller.connect();

}).call(this);

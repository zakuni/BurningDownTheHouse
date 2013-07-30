controller = new Leap.Controller()

controller.on('connect', () -> 
  console.log("Successfully connected.")
)

controller.on('deviceConnected', () ->
  console.log("A Leap device has been connected.")
)

controller.on('deviceDisconnected', () ->
  console.log("A Leap device has been disconnected.")
)

controller.connect()
controller = new Leap.Controller({enableGestures: true})

controller.on('connect', () -> 
  console.log("Successfully connected.")
)

controller.on('deviceConnected', () ->
  console.log("A Leap device has been connected.")
)

controller.on('frame', (frame) ->
  if frame.fingers.length > 0
    frame.fingers.forEach((finger) ->
      console.log finger.direction
    )
)

controller.on('deviceDisconnected', () ->
  console.log("A Leap device has been disconnected.")
)

controller.connect()
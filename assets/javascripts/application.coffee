output = $("#output")
Leap.loop (frame) ->
  output.html("Frame: #{frame.id}")

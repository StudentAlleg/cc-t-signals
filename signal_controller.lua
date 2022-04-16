rednet = require("rednet")
signal_id = {}



function setSignalAspect(id, aspect)
    rednet.send(signal_id, "set aspect " .. aspect)
end

function getSignal(id, aspect)

rednet.open("back")
rednet.host("signals", "signal_controller")

for 
rednet = require("rednet")
signal_id = {}



function init()



function setSignalAspect(id, aspect)
    rednet.send(signal_id, "set aspect " .. aspect)
end

function getSignal(id, aspect)

function matchIDs

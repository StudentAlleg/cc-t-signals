
signal_aspect = {
    "RED",
    "FLASHING_RED",
    "YELLOW",
    "FLASHING_YELLOW",
    "GREEN",
}

rednet = require("Rednet")
os = require("os")
Signal = {id = 0, aspect = 0}
Signal.__index = ConnectedComponents

function Signal:new(o, id)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.id = id or 0
    self.aspect = 0
    return o
end

function Signal:setAspect(num)
    self.aspect = num
end

function Signal:getAspect()
    return self.aspect()
end

function Signal:getId()
    return self.id
end

function Signal:update()
    ---check self.aspect and then set the proper redstone based on that
end

function signal_listen()
    while true:
        id, rednet.receive("signals")

    end

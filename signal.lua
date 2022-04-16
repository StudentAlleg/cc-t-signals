
rednet = require("Rednet")
os = require("os")
settings = require("settings")

Signal = {id = 0, aspect = 0}
Signal.__index = ConnectedComponents

function Signal:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    if settings.get("id") == nil then
        settings.set("id", 0)
    self.id = settings.get("id")
    self.aspect = 0
    return o
end

function Signal:setAspect(num)
    self.aspect = num
end

function Signal:getAspect()
    return self.aspect()
end

function Signal:setId(id)
    self.id = id
    settings.set("id", id)


function Signal:getId()
    return self.id
end

function Signal:update()
    ---check self.aspect and then set the proper redstone based on that
end

function init()
    
    

function signal_listen()
    while true:
        local id, message = rednet.receive("signals")
        if id == "signal_controller"

    end

signal = Signal:new(nil)
rednet.open("back")
while ~pcall(rednet.host, "signal", self.id) do
    signal.setID(signal.getID() + 1)
end


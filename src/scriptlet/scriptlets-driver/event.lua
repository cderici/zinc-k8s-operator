-- ScriptletEvents derived from base

require "scriptlets-driver.base"

local EventBase = JujuEntity:new()
events = {}
events.preInstall = EventBase:new()
events.postInstall = EventBase:new()
events.preStart = EventBase:new()
events.postStart = EventBase:new()
events.preStop = EventBase:new()
events.postStop = EventBase:new()
events.preRemove = EventBase:new()
events.postRemove = EventBase:new()
events.preConfigChanged = EventBase:new()
events.postConfigChanged = EventBase:new()
events.preUpdateStatus = EventBase:new()
events.postUpdateStatus = EventBase:new()
events.preUpgradeCharm = EventBase:new()
events.postUpgradeCharm = EventBase:new()

BoundEvent = JujuEntity:new()
function BoundEvent:new(boundObj, eventType)
    o = {}
    setmetatable(o, self)
    self.__index = self
    o.emitter = boundObj
    o.eventType = eventType
    return o
end

function BoundEvent:emit()
    self.emitter.juju._emit(self.eventType)
end

ScriptletEvents = JujuEntity:new()

-- Information modelling a Charm

require "scriptlets-driver.base"
require "scriptlets-driver.event"
require "scriptlets-driver.juju"
require "scriptlets-driver.model"

CharmBase = JujuEntity:new()

function CharmBase:new (juju)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    o.juju = juju or Juju:new()
    return o
end

function CharmBase:on()
    CharmEvents = ScriptletEvents:new()
    CharmEvents.pre_install = BoundEvent:new(self, events.preInstall)
    CharmEvents.post_start = BoundEvent:new(self, events.postStart)
    return CharmEvents:new()
end

function CharmBase:model()
    return self.juju.model
end

function CharmBase:register_scriptlet (event, info, scriptlet)
    self.juju:register_scriptlet(event, info, scriptlet)
end

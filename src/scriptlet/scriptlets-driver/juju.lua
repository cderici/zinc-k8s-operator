
Juju = {}
function Juju:new (o, model)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    o.model = model
    return o
end

function Juju:register_scriptlet(boundEvent, info, observer)
    --- put it in a private observer list
end

function Juju:set_application_version(version)
    -- set app version
end

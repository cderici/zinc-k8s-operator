-- base events and entities

JujuEntity = {}

function JujuEntity:new (o)
   o = o or {}
   setmetatable(o, self)
   self.__index = self
   return o
end

JujuBase = {}

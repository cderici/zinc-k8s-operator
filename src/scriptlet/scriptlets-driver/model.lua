-- Various entities modelling the juju state and the model

require "scriptlets-driver.base"

Model = JujuEntity:new()

-- function Model.load_config

Config = JujuEntity:new()

Application = JujuEntity:new()
Unit = JujuEntity:new()
   

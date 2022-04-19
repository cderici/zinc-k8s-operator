require "scriptlets-driver.juju"

framework = Juju:new()

function pre_install_scriptlet(model, event)
   current_config = model:load_config()
   for u in list_iter(model.units) do
      u.open_port(80, current_config.service_port)
   end
   -- model.set_application_port(4080)
end

function post_start_scriptlet(model, event)
   local version = "1.0"
   framework:set_application_version(version)
end

framework:register_scriptlet(events.preInstall, "change port", pre_install_scriptlet())
framework:register_scriptlet(events.postStart, "set version", post_start_scriptlet())

require "scriptlets-driver.charm"

MyCharm = CharmBase:new()

function MyCharm:_on_pre_install (event)
    current_config = self:model():load_config()
    for u in list_iter(self:model().units) do
        u.open_port(80, current_config.service_port)
    end
    -- self:model():set_application_port(4080)
end

function MyCharm:_on_post_start (event)
    local version = "1.0"
    self.juju:set_application_version(version)
end

MyCharm:register_scriptlet(MyCharm:on().pre_install, "change port", MyCharm._on_pre_install)
MyCharm:register_scriptlet(MyCharm:on().pre_update_status, "set version", MyCharm._on_post_start)

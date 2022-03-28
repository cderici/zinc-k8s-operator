local juju = {}

function juju.register_scriptlet(scriptlet)
   print(string.format("registered scriptlet for tag : %s -- %s", scriptlet.tag, scriptlet.description))
end

function juju.initiate()
   initiate()
end

function juju.change_env(modified_env)
   print("send the modified env to juju")
   -- maybe use the delta approach?
   register_env_delta()
end

function juju.get_charm_env()
   print("getting some representation for charm environment")
   return get_charm_env()
end

function juju.get_some_state_info()
   print "getting some state info"
   return provide_some_state_info()
end


return juju

local juju = {}

function juju.register_scriptlet(scriptlet)
   print(string.format("registered scriptlet for tag : %s -- %s", scriptlet.tag, scriptlet.description))
end

function juju.initiate()
   print "init"
end

function juju.change_env(modified_env)
   print("communicate the modified env to juju")
end

function juju.get_charm_env()
   print("getting a table for the charm env")
end

function juju.set_charm_env(modified_env)
   print(string.format("setting new charm env : %s", modified_env))
end


function juju.some_helper(x, y)
   print("running helper")
end


return juju

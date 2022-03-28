juju = require "juju"

local pre_deploy = {} -- this is just to demonstrate that a single
		      -- scriptlet can be used just as a lua module

function pre_deploy.scriptlet()

   -- get some sort of a representation for the charm context
   charm_env = juju.get_charm_env()

   -- modify the representation
   charm_env.port = 4080

   -- send the new representation
   juju.change_env(charm_env)
end


juju.register_scriptlet({
      scriptlet = pre_deploy.scriptlet,
      tag = 'pre-deploy',
      description = 'patches the port of the unit before deploying'
})

return pre_deploy

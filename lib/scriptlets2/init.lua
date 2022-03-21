-- init.lua acts like a config for wherever the scriptlet is being used

-- Juju (or whatever system uses the scriptlet) defines the
-- representation of the table returned


pre_deploy_actions = require "name-of-scriptlet-file"
another_actions = require "another-scriptlet-file"

OBJ = 'JUJU'

return {
   ['pre_deploy'] = pre_deploy_actions.PRE_DEPLOY,
   ['teardown'] = another_actions.ANOTHER
}

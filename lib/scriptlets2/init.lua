-- init.lua acts like a config for wherever the scriptlet is being used

-- exports PARAMETERS table for client systems to use for pointing to
-- specific scriptlet files with extra information


-- Juju (or whatever system uses the scriptlet) defines the
-- representation of PARAMETERS


require "name-of-scriptlet-file"
require "another-scriptlet-file"

OBJ = 'JUJU'
SCRIPTLETS = {
   ['pre_deploy'] = PRE_DEPLOY,
   ['teardown'] = ANOTHER}

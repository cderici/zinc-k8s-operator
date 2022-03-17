-- init.lua acts like a config for wherever the scriptlet is being used

-- exports PARAMETERS table for client systems to use for pointing to
-- specific scriptlet files with extra information


-- Juju (or whatever system uses the scriptlet) defines the
-- representation of PARAMETERS

OBJ = 'JUJU'
PARAMETERS = {{'name-of-scriptlet-file', -- (relative to .)
	       'pre-deploy', -- custom name that the scriptlet author uses
	       -- to communicate with the host system (e.g. tells Juju to
	       -- run this scriptlet at 'pre-deploy')
	       'patches the port of the unit before deploying'},
              {'another-scriptlet-file',
	       'teardown', -- another tag word that Juju will recognize
	       'helps charm to teardown'}}

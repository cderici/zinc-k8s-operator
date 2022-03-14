-- This is the scriptlet that is defined in CONFIG as
--
-- {name-of-scriptlet-file, pre-deploy, 'patches the port of the unit before deploying'}


--[[ Juju specific use

     Juju will inject a special object into the golua runtime that
     is used to communicate the changes need to happen
--]]

JUJU.charm.env.port = 4080
-- and reflect the changes that happened to this object into the actual environment

--[[ 
     Whatever Juju wants inside that object (i.e. exposed to charm
     authors), Juju will define it as objects to be used in the 
     scriptlets  (e.g. JUJU.charm.env)
--]]

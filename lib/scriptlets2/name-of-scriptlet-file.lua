function pre_deploy_handler(juju_obj)
   juju_obj.charm.env.port = 4080
end

PRE_DEPLOY = {pre_deploy_handler,
	     'patches the port of the unit before deploying'}

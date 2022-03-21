local function pre_deploy_handler(juju_obj)
   juju_obj.charm.env.port = 4080
end

return {
   PRE_DEPLOY = {
      action = pre_deploy_handler,
      description = 'patches the port of the unit before deploying'
   }
}

juju = require "juju"

local another = {}

function another.scriptlet()
   juju.some_helper(3,4)
end



juju.register_scriptlet({
      scriptlet = another.scriptlet,
      tag = 'teardown',
      description = 'helps charm to teardown'
})


return another

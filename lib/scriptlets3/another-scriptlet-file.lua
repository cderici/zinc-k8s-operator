juju = require "juju"

local another = {}

function another.handler()
   juju.some_helper(3,4)
end



juju.register_scriptlet({
      scriptlet = another.handler,
      tag = 'teardown',
      description = 'helps charm to teardown'
})


return another

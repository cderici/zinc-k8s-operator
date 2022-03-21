local function another_handler(juju_obj)
   juju_obj.helpers['juju_help_me_teardown'](3,4)
end

return {
   ANOTHER = {
      action = another_handler,
      descrtiption = 'helps charm to teardown'
   }
}

function another_handler(juju_obj)
   juju_obj.helpers['juju_help_me_teardown'](3,4)
end

ANOTHER = {another_handler,
	   'helps charm to teardown'}

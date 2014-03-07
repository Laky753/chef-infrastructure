name "appserver"
description "install tomcat7"
run_list "recipe[base::default]", "recipe[tomcat7::default]"
default_attributes({ 
})
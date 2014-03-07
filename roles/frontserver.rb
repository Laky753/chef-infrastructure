name "frontserver"
description "install apache2 and connect it with tomcat"
run_list "recipe[base::default]", "recipe[apache2::default]", "recipe[apache2::mod_jk]"
default_attributes({ 
})
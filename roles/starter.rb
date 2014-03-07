name "starter"
description "An example Chef role"
run_list "recipe[myface::apache, myface::tomcat, myface::vaadinapp]"
override_attributes({
  "starter_name" => "Lukas Majchrak",
})

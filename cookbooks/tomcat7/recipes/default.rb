include_recipe "openjdk::default"

package "tomcat7" do 
	action :install
end
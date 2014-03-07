package "libapache2-mod-jk" do 
	action :install
end


template "/etc/apache2/workers.properties" do
    source 'workers.properties.erb'
    owner 'root'
    group 'root'
    mode '0644'
	variables({:appserver => node[:apache2][:appserver]})
end

template "/etc/apache2/mods-available/jk.conf" do
    source 'jk.conf.erb'
    owner 'root'
    group 'root'
    mode '0644'
end

template "/etc/apache2/sites-available/default" do
    source 'default.erb'
    owner 'root'
    group 'root'
    mode '0644'
end

template "/etc/tomcat7/server.xml" do
    source 'server.xml.erb'
    owner 'root'
    group 'root'
    mode '0644'   
	notifies :restart, 'service[tomcat7], service[apache2]'
end

service "tomcat7" do
	action [:enable, :start, :restart]
end

service "apache2" do
	action [:enable, :start, :restart]
end
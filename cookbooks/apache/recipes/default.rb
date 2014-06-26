#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Author : Shailesh Sutar
# Company : Neova Solutions Pvt Ltd.

package "apache2" do
	action :install
end

service "apache2" do
	action [:start, :enable]  
end

# Write out own home page 
cookbook_file "/var/www/index.html" do
	source "index.html"
	mode "0644"
end

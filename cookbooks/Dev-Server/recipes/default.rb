#
# Cookbook Name:: Dev-Server
# Recipe:: default
#
# Copyright 2014,
#
# All rights reserved - Do Not Redistribute
#
# Author :: Shailesh Sutar
['mysql-server', 'php5', 'mongodb', 'apache2', 'php5-gd', 'phpunit', 'phpmyadmin'].each do |pkg|
	package pkg do
		action:install 
	end
end

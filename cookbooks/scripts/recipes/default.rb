#
# Cookbook Name:: scripts
# Recipe:: default
#
# Copyright 2014, 
#
# All rights reserved - Do Not Redistribute
#
# Author :: Shailesh Sutar
# Write out own home page
cookbook_file "/data/scripts/app_bkp.sh" do
        source "app_bkp.sh"
        mode "0755"
end


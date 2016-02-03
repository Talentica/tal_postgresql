#
# Cookbook Name:: tal_postgresql
# Recipe:: server
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "postgresql::server"

clear_text_password = data_bag_item("pgsql", "password")
#md5_digest = md5_hexdigest(clear_text_password["value"] + "postgres")
#node.set['postgresql']['password']['postgres'] = "md5" + md5_digest
node.set['postgresql']['password']['postgres'] = clear_text_password["value"]

bash "assign-postgres-password" do
  user 'postgres'
  code <<-EOH
  echo "ALTER ROLE postgres ENCRYPTED PASSWORD \'#{node['postgresql']['password']['postgres']}\';" | psql -p #{node['postgresql']['config']['port']}
  EOH
  action :run
#  not_if "ls #{node['postgresql']['config']['data_directory']}/recovery.conf"
#  only_if { node['postgresql']['assign_postgres_password'] }
end

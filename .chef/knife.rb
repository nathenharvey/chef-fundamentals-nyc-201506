# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nharvey150625nyc"
client_key               "#{current_dir}/nharvey150625nyc.pem"
validation_client_name   "nharvey150625nyc-validator"
validation_key           "#{current_dir}/nharvey150625nyc-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/nharvey150625nyc"
cookbook_path            ["#{current_dir}/../cookbooks"]

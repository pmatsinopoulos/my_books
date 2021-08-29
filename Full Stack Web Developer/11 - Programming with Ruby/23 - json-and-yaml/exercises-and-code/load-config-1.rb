# File: load-config-1.rb
#
require 'yaml'

config = YAML.load_file('config-2.yml')
['development', 'test', 'production'].each do |environment|
  environment_values = config[environment]
  puts "#{environment}: Username: #{environment_values['username']}, password: #{environment_values['password']}"
end

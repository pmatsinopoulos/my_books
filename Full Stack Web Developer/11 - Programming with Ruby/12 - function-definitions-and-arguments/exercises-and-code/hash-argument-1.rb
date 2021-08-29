# File: hash-argument-1.rb
#
def parse_options(options)
  production = options.delete(:production)
  staging = options.delete(:staging)
  test = options.delete(:test)
  integration = options.delete(:integration)
  puts "Production Server: #{production}"
  puts "Staging Server: #{staging}"
  puts "Test Server: #{test}"
  puts "Integration Server: #{integration}"
end

parse_options(production: '192.168.1.1', staging: '192.168.1.2', test: '192.168.1.3', integration: '192.168.1.4')

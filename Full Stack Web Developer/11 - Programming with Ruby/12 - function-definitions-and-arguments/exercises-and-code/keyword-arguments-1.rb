# File: keyword-arguments-1.rb
#
def parse_options(production:, staging:, test:, integration:)
  puts "Production Server: #{production}"
  puts "Staging Server: #{staging}"
  puts "Test Server: #{test}"
  puts "Integration Server: #{integration}"
end

parse_options(production: '192.168.1.1', staging: '192.168.1.2', test: '192.168.1.3', integration: '192.168.1.4')

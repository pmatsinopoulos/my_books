# File: main.rb
#
require 'rack'

html_content =<<-HTML
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Hello Rack Page</title>

  </head>
  <body>
    <h1>Hello Rack!</h1>
  </body>
</html>
HTML

app = Proc.new do |environment|
  puts environment
  ['200', {'Content-Type' => 'text/html'}, [html_content]]
end

Rack::Handler::WEBrick.run app, Port: 8089

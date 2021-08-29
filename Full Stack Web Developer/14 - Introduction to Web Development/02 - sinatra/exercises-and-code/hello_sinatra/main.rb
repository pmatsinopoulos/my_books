# File: main.rb
#
require 'sinatra'

html_content =<<-HTML
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Hello Sinatra Page</title>

  </head>
  <body>
    <h1>Hello Sinatra!</h1>
  </body>
</html>
HTML

get '/' do
  html_content
end


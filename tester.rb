require 'sinatra'
require 'capybara'
require 'capybara/poltergeist'
require 'pry'

class Server < Sinatra::Base
  get "/" do
<<-HTML
<html>
  <head>
    <title>Hello World</title>
  </head>
  <body>
    <a class="hello" href="http://google.com" disabled>Google</a>
  </body>
</html>
HTML
  end
end

session = Capybara::Session.new(:poltergeist, Server)
session.visit("/")
binding.pry

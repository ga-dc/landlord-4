require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

get "/" do # Gets the path "/" index
  erb :index # Finds index.erb template
end

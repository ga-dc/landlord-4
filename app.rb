require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

get "/" do # Gets the path "/" index
  erb :"apartments/index" # Finds index.erb template
end

# New Route
get "/apartments/new" do # This is the show form route for artists
  erb :"apartments/new" # Finds artists/index.erb template
end

require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection.rb'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

# Load models

require_relative 'models/apartment'
require_relative 'models/tenant'

get '/' do
  erb :"home"
end

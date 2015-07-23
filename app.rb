require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

require_relative 'db/connection'
require_relative 'models/apartment'
require_relative 'models/tenant'


get '/' do
  erb :index
end

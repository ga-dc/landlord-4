require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load DB
require_relative 'db/connection'

# Load models
require_relative 'models/apartment'
require_relative 'models/tenant'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

# General route
get '/' do
	erb :"welcome"
end
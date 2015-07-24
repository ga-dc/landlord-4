require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

# Load specific routes
require_relative 'db/connection'
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

require_relative 'models/apartment'
require_relative 'models/tenant'

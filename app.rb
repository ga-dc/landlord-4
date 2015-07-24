require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'
require_relative 'db/seeds'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

require_relative 'models/apartment'
require_relative 'models/tenant'

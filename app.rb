require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

# Load models
require_relative 'models/apartment'
require_relative 'models/tenant'

# connection to db
require_relative 'db/connection'

require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

# Load models
require_relative 'models/tenant'
require_relative 'models/apartment'

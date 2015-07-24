require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

require 'pry'
require_relative 'db/connection' #connection to DB

require_relative 'models/apartment'
require_relative 'models/tenant'
# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

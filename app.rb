require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# controllers
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

# db
require_relative 'db/connection'
# require_relative 'db/schema'
require_relative 'db/seeds'

# models
require_relative 'models/apartment'
require_relative 'models/tenant'

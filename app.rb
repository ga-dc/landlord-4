# require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection.rb'
# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

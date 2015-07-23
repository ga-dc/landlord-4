require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

# Load the file to connect to the DB
require_relative 'db/connection.rb'

# Load specific routes
require_relative 'controllers/welcome'
require_relative 'controllers/apartments'
require_relative 'controllers/tenants'

get "/" do # Gets the path "/" index
  erb :"apartments/index" # Finds index.erb template
end

# New Route
get "/apartments/new" do # This is the show form route for artists
  erb :"apartments/new" # Finds artists/index.erb template
end

# Show Route
get "/apartments/:id" do # Gets the path "apartments/:id" ex. "/apartments/3/"
  @artist = Artist.find(params[:id])
  @artist_photo = @artist.photo_url

  @artist_songs = Song.where(artist_id = @artist)

  erb :"artists/show" # Finds artists/show.erb template, Shows apartment details
end

require 'pry'
# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

post '/apartments' do
  @apartment = Apartment.create(params[:apartment])
  redirect "/apartment/#{@apartment.id}"
end

# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

# edit
get '/apartments/:id/edit' do
  @apartment = Apartment.find(params[:id])
  erb :"apartment/edit"
end

put '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.update(params[:apartment])
  redirect "/apartment/#{@apartment.id}"
end

# delete
delete '/apartment/:id' do
  @apartment = Artist.find(params[:id])
  @apartment.destroy
  redirect "/apartments"
end

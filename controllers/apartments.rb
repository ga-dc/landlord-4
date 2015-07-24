# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new apartment form
get '/apartments/new' do
  erb :"apartments/new"
end

# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

# edit apartment page
get '/apartments/:id/edit' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/edit"
end

# Create new apartment, then redirect to the apartment's page
post '/apartments' do
  @apartment = Apartment.create(params[:apartment])
  redirect "/apartments/#{@apartment.id}"
end

# Put that waits for an apartment edit to be made
put '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.update(params[:apartment])
  redirect "/apartments/#{@apartment.id}"
end

# Delete apartment with particular id, then return to apartment listings
delete '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.destroy
  redirect '/apartments'
end

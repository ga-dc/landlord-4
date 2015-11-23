# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

#post
post '/apartments' do
  new_apartment = Apartment.create(params)

  redirect "/apartments/#{new_apartment.id}"
end
# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

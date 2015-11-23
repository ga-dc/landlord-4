# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

# show
get '/apartments/:id' do
  @apartments = Apartment.find(params[:id])
  erb :"apartments/show"
end
# create
post '/apartments' do
  @apartment = Apartment.create(params[:apartment])
  redirect "/apartment/#{@apartment.id}"
end

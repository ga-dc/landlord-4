# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

post '/apartments' do
  @apartment = Apartment.create(params[:apartment])
  redirect "/apartments/#{@apartment.id}"
end
# new
get '/apartments/new' do
  erb :"apartments/new"
end

# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

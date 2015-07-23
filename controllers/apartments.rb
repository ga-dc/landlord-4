# index
get '/apartments' do
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

post '/apartments/new' do
  @apartment = Apartment.create(params[:apartment])
    redirect "/apartments/#{@apartment.id}"
  end

# show
get '/apartments/:id' do
  erb :"apartments/show"
end

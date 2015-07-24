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
  Apartment.create!(params[:apartment])
    redirect "/apartments"
  end

# show
get '/apartments/:id' do
  erb :"apartments/show"
end

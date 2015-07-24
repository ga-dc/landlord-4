# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# show
get '/apartments/:id' do
  @apartments = Apartment.find(params[:id])
  erb :"apartments/show"
end

# new
post '/apartments' do
  @apartments = Apartment.create!(params[:apartments])
  redirect("/apartments/#{@apartments.id}")
end

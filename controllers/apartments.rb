
# index route (REST)
get "/apartments" do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new route
get "/apartments/new" do
  erb :"apartments/new"
end

# show route
get "/apartments/:id" do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

# create route
post "/apartments" do
  @apartment = Apartment.create(params[:apartment])
  redirect "/apartments/#{@apartment.id}"
end

# edit
get "/apartments/:id/edit" do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/edit"
end

# update
put '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.update(params[:apartment])
  redirect "/apartments/#{@apartment.id}"
end

# destroy
delete '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.destroy
  redirect "/apartments"
end

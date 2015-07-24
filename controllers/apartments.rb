get "/" do # Gets the path "/" index
  @all_apartments = "apartments/index"
  @search_apartment = "apartments/search"
  @show_apartment = "apartments/show"
  @add_apartment = "apartments/new"
  @list_tenants = "/apartments/3/tenants"
  @add_tenant = "/apartments/3/tenants/new"
  erb :"welcome" # Finds index.erb template
end

# index
get "/apartments" do # This is the index route for apartments
  @header_route = "Apartment List"
  @apartments = Apartment.all
  erb :"apartments/index" # Finds index.erb template
end

# new
get "/apartments/new" do # This is the new form route for apartments
  @header_route = "Add Apartment"
  erb :"apartments/new" # Finds apartments/new.erb template
end

# show
get '/apartments/:id' do # This is the show route for apartments
  @header_route = "Apartment"
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

# create
post "/apartments" do
  new_apartment = Apartment.create(params[:apartment])
  redirect "/apartments/#{new_apartment.id}"
end

# edit
get "/apartments/:id/edit" do
  @header_route = "Edit Apartment"
  @apartment = Apartment.find(params[:id])
  erb :"apartments/edit"
end

# update
put "/apartments/:id" do
  @apartment_to_update = Apartment.find(params[:id])
  @apartment_to_update.update(params[:apartment])
  redirect "/apartments/#{@apartment_to_update.id}"
end

# destroy

delete "/apartments/:id" do
  @apartment_to_delete = Apartment.find(params[:id])
  @apartment_to_delete.destroy
  redirect "/apartments"
end

# index route
get '/apartments' do
	@apartments = Apartment.all
  erb :"apartments/index"
end

# new route
get '/apartments/new' do
  erb :"apartments/new"
end

# show route
get '/apartments/:id' do
	@apartment = Apartment.find(params[:id])
	@tenants = Tenant.where(apartment_id: @apartment[:id])
  erb :"apartments/show"
end

# create route
post "/apartments" do
	new_apartment = Apartment.create(params[:apartment])
	redirect "/apartment/#{new_apartment.id}"
end
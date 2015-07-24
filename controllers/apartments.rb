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
	@apartment = Apartment.find(params[:id])
	@tenants = Tenant.where(apartment_id: @apartment[:id])
  erb :"apartments/show"
end

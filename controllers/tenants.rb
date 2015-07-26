# index
get '/apartments/:id/tenants' do
  @tenants = Tenant.where(apartment_id: params[:id])
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  @apartment = Apartment.find(params[:id])
  erb :"tenants/new"
end

post '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  @apartment.tenants.create(params[:tenant])
  redirect "/apartments/#{@apartment.id}/tenants"
end

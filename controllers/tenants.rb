
# index
get '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  @tenants = Tenant.where("apartment_id = #{params[:id]}")
  erb :"tenants/index"
end

# New tenant form
get '/apartments/:id/tenants/new' do
  erb :"tenants/new"
end

# Show the tenants for a specific apartment
get '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  @tenants = Tenant.where("apartment_id = #{params[:id]}")
  erb :"tenants/show_all"
end

# Show a specific tenant
get '/apartments/:id/tenants/:tid' do
  @apartment = Apartment.find(params[:id])
  @tenant = Tenant.find(params[:tid])
  erb :"tenants/show"
end

# Create new apartment, then redirect to the apartments page
post '/apartments/:id/tenants/' do
  @apartment = Apartment.find(params[:id])
  @tenant = Tenant.create(params[:tenant])
  redirect "/apartments/#{@apartment.id}/tenants/#{@tenant.id}"
end

# Put that waits for an apartment edit to be made
put '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.update(params[:apartment])
  redirect "/apartments/#{@apartment.id}"
end

# Delete apartment with particular id, then return to apartment listings
delete '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.destroy
  redirect '/apartments'
end

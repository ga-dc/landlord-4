get '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  erb :"tenants/index"
end


get '/apartments/:id/tenants/new' do
  @apartment = Apartment.find(params[:id])
  erb :"tenants/new"
end

put '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  @tenant = Tenant.create(params[:tenant])
  @apartment.tenants.push(@tenant)
  redirect "/apartments/#{@apartment.id}/tenants"
end
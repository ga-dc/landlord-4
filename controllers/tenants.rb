# index
get '/apartments/:id/tenants' do
    @apartment = Apartment.find(params[:id])
    @tenants  = @apartment.tenants
    erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/:id' do
    @tenant = Tenant.find(params[:id])
    @apartment = Apartment.where(params["id: @tenant.apartment_id"])
    erb :"tenants/show"
end

#new
get '/apartments/tenants/new' do
    erb :"tenants/new"
end

post '/apartments/:id/tenants' do
    # apartment = Apartment.find(params[:id])
    new_tenant = Tenant.create(params[:tenant])
    apt_num = new_tenant.apartment_id.to_i
    apartment = Apartment.where(params["id: apt_num"])
    # apartment.tenants << new_tenant
    # apartment.tenants.create!(params[:apartment])
    redirect "/apartments/#{new_tenant.apartment_id}/tenants"

end

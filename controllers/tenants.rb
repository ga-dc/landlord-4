# index
get '/apartments/:id/tenants' do
  @tenants = Apartment.find(params[:id]).tenants
  erb :"tenants/index"
end

# new
get '/tenants/new' do
  erb :"tenants/new"
end

#add new tenant form entries
post "/tenants" do
  @tenant = Tenant.create(params[:tenant])
  redirect "/tenants/#{@tenant.id}"
end

# show
get '/apartments/:id/tenants/new' do
  @tenant = Tenant.find(params[:id])
  erb :"tenants/new"
end

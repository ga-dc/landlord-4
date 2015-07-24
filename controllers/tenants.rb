# index
get '/apartments/:id/tenants' do
  @tenants = Tenant.all
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  @tenant = Tenant.create(params[:tenant])
  erb :"tenants/new"
end

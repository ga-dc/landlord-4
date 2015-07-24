# index
get '/apartments/:id/tenants' do
  @tenants = Tenant.all
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  erb :"tenants/new"
end

# index
get '/apartments/:id/tenants' do
  @tenants = Tenant.all
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  @tenant = Tenant.find(params[:id])
  erb :"tenants/new"
end


get '/tenant/new' do
  erb :"tenants/new"
end

post "/tenants" do
  new_tenant = Tenant.create(params[:tenant])
  redirect "/tenants/#{new_tenant.id}"
end

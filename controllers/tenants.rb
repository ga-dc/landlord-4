# index
get '/tenants' do
  @tenants = Tenant.all
  erb :"tenants/index"
end

# new
get '/tenants/new' do
  erb :"tenants/new"
end
# show
get '/tenants/:id' do
  @tenant = Tenant.find(params[:id])
  erb :"tenants/show"
end

# create
post '/tenants' do
  @tenant = Tenant.create(params[:tenant])
  redirect "/apartments/#{@tenant.id}"
end

# edit
get '/tenants/:id/edit' do
  @tenant = Tenant.find(params[:id])
  erb :"tenants/edit"
end

# update
put '/tenants/:id' do
  @tenant = Tenant.find(params[:id])
  @tenant.update(params[:tenant])
  redirect "/apartments/#{@tenant.id}"
end

# destroy
delete '/tenants/:id' do
  @tenant = Tenant.find(params[:id])
  @tenant.destroy
  redirect "/tenants"
end

#index route
get "/tenants" do
  @tenants = Tenant.all
  erb :"tenants/index"
end

#new route
get "/tenants/new" do
  erb :"tenants/new"
end

#create route
post "/tenants" do
  new_tenant = Tenant.create(params[:tenant])
  redirect "/tenants/#{new_tenant.id}"
end

#show route
get "/tenants/:id" do
  @tenant = Tenant.find(params[:id])
  erb :"tenants/show"
end

#edit route
get "/tenants/:id/edit" do
  @tenant = Tenant.find(params[:id])
  erb :"tenants/edit"
end

#update route
put "/tenants/:id" do
  @tenant = Tenant.find(params[:id])
  @tenant.update(params[:tenant])
  redirect "/tenants/#{@tenant.id}"
end

#destroy route
delete "/tenants/:id" do
  @tenant = Tenant.find(params[:id])
  @tenant.destroy
  redirect "/tenants"
end

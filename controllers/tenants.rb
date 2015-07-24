# index
get '/apartments/:id/tenants' do
  @tenants = Tenant.all.order(name: :asc)
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  erb :"tenants/new"
end

post '/apartments/:id/tenants' do
  @tenant = Tenant.create(params[:tenant])
  redirect "/apartments/3/tenants"
end

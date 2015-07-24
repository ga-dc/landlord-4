# index
get '/apartments/:id/tenants' do
    @tenants = Apartment.find(params[:id]).tenants
    erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  erb :"tenants/new"
end

post '/tenants' do
    @tenant = Tenant.create(params[:tenant])
    redirect "/tenants/"
end

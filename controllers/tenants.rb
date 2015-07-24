# index
get '/apartments/:id/tenants' do
  @tenants = Apartment.find(params[:id]).tenants
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  erb :"tenants/new"
end

# create
post "/apartments" do
  @tenant = Tenant.create!(params[:apartment])
  redirect "/apartments"
end

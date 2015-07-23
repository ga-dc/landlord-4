# index
get '/apartments/:id/tenants' do
  @tenants = Apartment.find(params[:id]).tenants.all
  binding.pry
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  erb :"tenants/new"
end

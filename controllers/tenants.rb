# index
get '/apartments/:id/tenants' do
  @apartment = Apartment.find_by(id:params[:id])
  @tenants = @apartment.tenants
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  @apartment = Apartment.find_by(params[:id])
  erb :"tenants/new"
end

require 'pry'
# index
get '/apartments/:id/tenants' do
  @apartment = Apartment.find_by(id:params[:id])
  @tenants = @apartment.tenants
  erb :"tenants/index"
end

post "/apartments/:id/tenants" do
  #binding.pry
  @tenants = Tenant.create(params[:tenants])
  #binding.pry
  @apartment = Apartment.find_by(id:params[:id])
  redirect "/apartments/#{@apartment.id}/tenants"
end
# show
get '/apartments/:id/tenants/new' do
  @apartmentParam = params[:id].to_i
  @apartment = Apartment.find_by(id:params[:id])
  @tenants = @apartment.tenants
  erb :"tenants/new"
end

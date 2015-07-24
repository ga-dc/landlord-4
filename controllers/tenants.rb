# show
get '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  erb :"tenants/index"
end

# new
get '/apartments/:id/tenants/new' do
  @apartment = Apartment.find(params[:id])
  erb :"tenants/new"
end

post '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  apartment.tenant.creates(params[:id])
  redirect "/apartments/#{@apartment.id}/tenants"
end

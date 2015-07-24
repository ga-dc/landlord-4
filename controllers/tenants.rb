# index
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
  apartment = Apartment.find(params[:id]).tenants.create(params[:tenant])
  redirect "/apartments/#{params[:id]}/tenants"
end

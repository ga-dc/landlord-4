# index
get '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do
  @apartment = Apartment.find(params[:id])
  erb :"tenants/new"
end

post '/apartments/:id/tenants' do
  @apartment = Apartment.find(params[:id])
  @apartment.tenants.create(params[:apartment])
  redirect "/apartment/#{apartment.id}/tenants"
end

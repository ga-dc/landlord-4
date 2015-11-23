# index
get '/apartments/:id/tenants' do
  @tenants = Apartment.find(params[:id]).tenants.all
  erb :"tenants/index"
end

# show
get '/apartments/:id/tenants/new' do

  erb :"tenants/new"
end

#post
post '/apartments/:id/tenants' do
    binding.pry
  new_tenants = Tenant.create(params[:tenant])

  redirect"/apartments/#{new_tenants.apartment_id}"

end

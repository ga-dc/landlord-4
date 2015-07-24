# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

#create
post "/apartments" do
  new_apartment = Apartment.create(address: params[:address],
                                   monthly_rent: params[:monthly_rent],
                                   sqft: params[:sqft],
                                   num_beds: params[:num_beds],
                                   num_baths: params[:num_baths])
  redirect "/apartments/#{new_apartment.id}"
end

# show
get '/apartments/:id' do
  @apartments = Apartment.find(params[:id])
  erb :"apartments/show"
end

# index
get "/apartments" do
  @apartments= Apartment.all
  erb :"apartments/index"
end

# new
get "/apartments/new" do
  erb :"apartments/new"
end

#Post new apartment
post "/apartments" do
  new_apartment= apartment.create(address: params[:address],
                         monthly_rent: params[:monthly_rent],
                        num_beds: params[:num_beds],
                        num_baths: params[:num_baths])

  redirect "/apartments/#{new_apartment.id}"
end

# show
get "/apartments/:id" do
    @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

# show sample
get "/apartments/:3" do
  @apartment= Apartment.find(params[3])
  erb :"apartments/show"
end

#index route
get "/apartments" do
  @apartments = Apartment.all
  erb :"apartments/index"
end

#show route
get "/apartments/:id" do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

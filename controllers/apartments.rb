#index route
get "/apartments" do
  @apartments = Apartment.all
  erb :"apartments/index"
end

#new route
get "/apartments/new" do
  erb :"apartments/new"
end

#create route
post "/apartments" do
  new_apartment = Apartment.create(params[:apartment])
  redirect "/apartments/#{new_apartment.id}"
end

#show route
get "/apartments/:id" do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

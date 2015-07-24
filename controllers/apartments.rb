# index
get '/apartments' do
  @apartments = Apartments.all
  erb(:"apartments/index")
end

# new
get '/apartments/new' do
  erb(:"apartments/new")
end

#create 
post '/apartments' do
  @apartment = Apartment.create!(params[:apartment])
  redirect("/apartments/#{@apartment.id}")
end

# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb(:"apartments/show")
end

#edit
get "/apartment/:id/edit" do
  @apartment = Apartment.find(params[:id])
  erb(:"apartments/edit")
end

#update
put "/apartments/:id" do
    @apartment = Apartment.find(params[:id])
    @apartment.update(params[:apartment])
    redirect("/apartments/#{@apartment.id}")
end

#destroy
delete "apartments/:id" do
    @apartment = apartment.find(params[:id])
    @apartment.destroy
    redirect to("/apartments")
end

# ===== welcome
get '/' do
  @apartments = Apartment.all
  erb :welcome
end

# ===== show apartment
get '/apartments/:id' do
  @apartment = Apartment.find(@params[:id])
  erb :apartment/show
end

# ===== new apartment
get '/apartments/new' do
  erb :apartment/new
end

# ===== create apartment
post '/apartments/create' do
  Apartment.create(address: params[:address], monthly_rent: params[:monthly_rent], sqft: params[:sqft], num_beds: params[:num_beds], num_baths: params[:num_baths])
  redirect "/apartments"
end

# ===== edit apartment
get '/apartments/:id/edit' do
  @apartment = Apartment.find(@params[:id])
  erb :apartment/edit
end

# ===== update apartment
put '/apartments/:id/update' do
  @apartment = Apartment.find(@params[:id])
  @apartment.update(address: params[:address], monthly_rent: params[:monthly_rent], sqft: params[:sqft], num_beds: params[:num_beds], num_baths: params[:num_baths])
  redirect "/apartments"
end

# ===== delete apartment
delete "apartments/:id" do
  @apartment = Apartment.find(@params[:id])
  @apartment.destroy
  redirect "/apartments"
end

# index, show, new, create, edit, update, destroy
get '/apartment/:id/tenents' do
  @apartments = Apartment.all
  erb :welcome
end

get '/apartment/:id/tenent/new' do
  @apartments = Apartment.all
  erb :welcome
end

get '/apartment/:id/tenent/edit' do
  @apartments = Apartment.all
  erb :welcome
end

get '/tenents/:id/edit' do
  @apartments = Apartment.all
  erb :welcome
end

delete "tenents/:id" do
  @tenent = Tenent.find(@params[:id])
  @tenent.destroy
  redirect "/tenents"
end

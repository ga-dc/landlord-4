# ===== welcome
get '/' do
  @apartments = Apartment.all
  erb :welcome
end

# ===== ===== ===== APARTMENTS ===== ===== =====
# ===== show apartment
get '/apartments/:id' do
  @apartment = Apartment.find(@params[:id])
  erb :apartment/show
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

# ===== new apartment
get '/apartments/new' do
  erb :apartment/new
end

# ===== create apartment
post '/apartments/create' do
  Apartment.create(address: params[:address], monthly_rent: params[:monthly_rent], sqft: params[:sqft], num_beds: params[:num_beds], num_baths: params[:num_baths])
  redirect "/apartments"
end

# ===== delete apartment
delete "apartments/:id" do
  @apartment = Apartment.find(@params[:id])
  @apartment.destroy
  redirect "/apartments"
end

# ===== ===== ===== TENENTS ===== ===== =====
# ===== see tenents for selected apartment
get '/apartment/:id/tenents' do
  @apartment = Apartment.find(@params[:id])
  @tenents = Tenent.where(apartment_id: @params[:id])
  erb :"/tenents/index"
end

# ===== show tenent
get '/tenents/:id/show' do
  @tenent = Tenent.find(@params[:id])
  erb :tenent/show
end

# ===== edit tenent
get '/tenents/:id/edit' do
  @tenent = Tenent.find(@params[:id])
  erb :tenent/edit
end

# ===== update tenent
put '/tenents/:id/update' do
  @tenent = Tenent.find(@params[:id])
  @tenent.update(name: params[:name], age: params[:age], gender: params[:gender])
  redirect "/apartments"
end

# ===== add tenent for apartment
get '/apartment/:id/tenent/new' do
  @apartment = Apartment.find(@params[:id])
  erb :tenents/new
end

# ===== create tenent
post '/tenents/create' do
  Tenent.create(name: params[:name], age: params[:age], gender: params[:gender])
  redirect "/apartments"
end

# ===== delete tenent
delete "tenents/:id/delete" do
  @tenent = Tenent.find(@params[:id])
  @tenent.destroy
  redirect "/apartments"
end

# index
get '/apartments' do
  @apartments = Apartment.all.order(:id)
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

#create
post '/apartments' do
  @apartment = Apartment.create(params[:apartment])
  redirect :"apartments/#{@apartment.id}"
end

#edit
get '/apartments/:id/edit' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/edit"
end

put '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.update(params[:apartment])
  redirect :"apartments/#{@apartment.id}"
end

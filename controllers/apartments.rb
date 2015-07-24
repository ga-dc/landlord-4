#sample
get '/apartments/sample' do
  erb :"apartments/sample"
end

get '/apartments/sample/tenants' do
  erb :"apartments/sample_tenants"
end

# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

post '/apartments' do
  @apartment = Apartment.create(params[:apartment])
redirect "/apartments/#{@apartment.id}"
end

# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end

# edit
get '/apartments/:id/edit' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/edit"
end

put '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.update(params[:apartment])
  redirect '/apartments'
end

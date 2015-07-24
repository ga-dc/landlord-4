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

    Apartment.create(params[:apartment])
    redirect "/apartments"
end

# show
get '/apartments/:id' do
    @apartment = Apartment.find(params[:id])
    erb :"apartments/show"
end

#update
get '/apartments/:id/edit' do
    @apartment = Apartment.find(params[:id])
    erb :"apartments/edit"
end

put '/apartments/:id' do
    @apartment = Apartment.find(params[:id])
    @apartment.update(params[:apartment])
    redirect "/apartments/#{@apartment.id}"
end
#delete
delete "/apartments/:id" do
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect "/apartments"
end

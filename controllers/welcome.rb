get '/' do
  @random = Apartment.all.sample
  erb :welcome
end

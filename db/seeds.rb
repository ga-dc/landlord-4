# don't forget to load dependencies!
require 'bundler/setup'
require 'pry'

require_relative '../db/connection.rb'
require_relative '../models/apartment'
require_relative '../models/tenant'

Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class
first_street_apt  = Apartment.create(address: "1234 1st St", monthly_rent: 800,  sqft: 1100, num_beds: 1, num_baths: 1)
second_street_apt = Apartment.create(address: "2341 2nd St", monthly_rent: 900,  sqft: 1200, num_beds: 2, num_baths: 2)
third_street_apt  = Apartment.create(address: "3412 3rd St", monthly_rent: 1000,  sqft: 1300, num_beds: 3, num_baths: 3)

# create at least 9 objects(at least 5 must be long to an apartment)
first_street_apt.tenants.create([
  {name: "sam", age: 24, gender: "f"},
  {name: "tom", age: 26, gender: "m"},
  {name: "jerry", age: 32, gender: "m"}
  ])
second_street_apt.tenants.create([
  {name: "megan", age: 52, gender: "f"},
  {name: "mary", age: 44, gender: "f"},
  {name: "shamus", age: 28, gender: "m"}
  ])
third_street_apt.tenants.create([
  {name: "eltahir", age: 32, gender: "m"},
  {name: "lindsay", age: 24, gender: "f"},
  {name: "haleigh", age: 37, gender: "f"}
  ])

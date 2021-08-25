desc "Hydrate the database with some sample data to look at so that developing is easier"

task({ :sample_data => :environment }) do

User.destroy_all
Service.destroy_all
ServiceLocation.destroy_all
Review.destroy_all
Offering.destroy_all
Neighborhood.destroy_all
Favorite.destroy_all
Favorite.destroy_all


  #  email           :string
#  password_digest :string
#  username        :string

require 'faker'
10.times do 
u = User.new 
u.email = "#{Faker::Name.first_name}@email.com"
u.password = "password"
u.username = Faker::Name.first_name
u.save 
end 
p User.count 

users = User.all

#  name                    :string
10.times do 
neighborhood = Neighborhood.new
neighborhood.name = Faker::Address.community
neighborhood.save
end 
neighborhoods = Neighborhood.all 
#  address                 :string
#  availability            :time
#  email                   :string
#  image                   :string
#  name                    :string
#  phone                   :string
#  neighborhood_id         :integer


10.times do
service_provider = ServiceProvider.new
service_provider.neighborhood_id = neighborhoods.sample.id
service_provider.address = Faker::Address.full_address
service_provider.availability = Faker::Date.in_date_period
service_provider.name = Faker::Name.name
service_provider.email = "#{Faker::Name.first_name}@email.com"
service_provider.phone = Faker::PhoneNumber.cell_phone
service_provider.image = Faker::Avatar.image
service_provider.save
end
service_providers = ServiceProvider.all



#  review              :text
#  service_provider_id :integer
#  user_id             :integer

10.times do 
review = Review.new
review.service_provider_id = service_providers.sample.id
review.user_id = users.sample.id
review.save 
end 
reviews = Review.all


#  neighborhood_id     :integer
#  service_provider_id :integer

10.times do 
  service_location = ServiceLocation.new
  service_location.neighborhood_id = neighborhoods.sample.id
  service_location.service_provider_id = service_providers.sample.id
  service_location.save
end
service_locations = ServiceLocation.all

#  name            :string

services = ["Hourly Babysitting","Weekend Babysitting", "Daytime Babysitting", "Evening Babysitting"]

10.times do 
  service = Service.new
  service.name = services.sample
  service.save 
end 
services = Service.all



#  availability        :datetime
#  service_id          :integer
#  service_provider_id :integer

10.times do 
offering = Offering.new
offering.availability = Faker::Date.in_date_period
offering.service_id = services.sample.id
offering.service_provider_id = service_providers.sample.id
offering.save
end
offerings = Offering.all



#  image       :string
#  notes       :text
#  offering_id :integer
#  user_id     :integer

10.times do 
favorite = Favorite.new
favorite.notes = Faker::Quotes::Shakespeare.hamlet_quote
favorite.offering_id = offerings.sample.id
favorite.user_id = users.sample.id
favorite.save
end 
favorites = Favorite.all


end 
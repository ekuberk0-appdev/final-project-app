desc "Hydrate the database with some sample data to look at so that developing is easier"

task({ :sample_data => :environment }) do

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
service_provider.save
end
service_providers = ServiceProvider.all


end

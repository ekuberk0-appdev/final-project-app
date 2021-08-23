desc "Hydrate the database with some sample data to look at so that developing is easier"

task({ :sample_data => :environment }) do

  #  id              :integer          not null, primary key
#  email           :string
#  favorites_count :integer
#  password_digest :string
#  reviews_count   :integer
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
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


end

end

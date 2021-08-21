# == Schema Information
#
# Table name: service_providers
#
#  id                      :integer          not null, primary key
#  address                 :string
#  availability            :time
#  email                   :string
#  image                   :string
#  name                    :string
#  offerings_count         :integer
#  phone                   :string
#  reviews_count           :integer
#  service_locations_count :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  neighborhood_id         :integer
#
class ServiceProvider < ApplicationRecord
end

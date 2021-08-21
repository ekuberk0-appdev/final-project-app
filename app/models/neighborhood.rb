# == Schema Information
#
# Table name: neighborhoods
#
#  id                      :integer          not null, primary key
#  name                    :string
#  service_locations_count :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
class Neighborhood < ApplicationRecord
end

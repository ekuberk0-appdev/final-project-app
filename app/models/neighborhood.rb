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

  has_many(:service_locations, { :class_name => "ServiceLocation", :foreign_key => "neighborhood_id", :dependent => :nullify })

  has_many(:service_providers, { :through => :service_locations, :source => :service_provider })

  

end

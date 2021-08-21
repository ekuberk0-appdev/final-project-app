# == Schema Information
#
# Table name: service_locations
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  neighborhood_id     :integer
#  service_provider_id :integer
#
class ServiceLocation < ApplicationRecord

  belongs_to(:service_provider, { :required => true, :class_name => "ServiceProvider", :foreign_key => "service_provider_id", :counter_cache => true })

  belongs_to(:neighborhood, { :required => true, :class_name => "Neighborhood", :foreign_key => "neighborhood_id", :counter_cache => true })

  

end

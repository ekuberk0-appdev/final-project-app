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
end

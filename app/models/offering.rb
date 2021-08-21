# == Schema Information
#
# Table name: offerings
#
#  id                  :integer          not null, primary key
#  favorites_count     :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  service_id          :integer
#  service_provider_id :integer
#
class Offering < ApplicationRecord
end

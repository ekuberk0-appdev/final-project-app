# == Schema Information
#
# Table name: reviews
#
#  id                  :integer          not null, primary key
#  review              :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  service_provider_id :integer
#  user_id             :integer
#
class Review < ApplicationRecord
end

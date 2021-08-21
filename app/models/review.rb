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

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })

  belongs_to(:service_provider, { :required => true, :class_name => "ServiceProvider", :foreign_key => "service_provider_id", :counter_cache => true })

  

end

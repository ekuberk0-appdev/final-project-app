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

  belongs_to(:service_provider, { :required => true, :class_name => "ServiceProvider", :foreign_key => "service_provider_id", :counter_cache => true })

  belongs_to(:service, { :required => true, :class_name => "Service", :foreign_key => "service_id", :counter_cache => true })

  has_many(:favorites, { :class_name => "Favorite", :foreign_key => "offering_id", :dependent => :destroy })

  has_many(:users, { :through => :favorites, :source => :user })

end

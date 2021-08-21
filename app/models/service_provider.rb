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
  validates(:name, { :presence => true })
  validates(:name, { :uniqueness => { :scope => ["neighborhood_id"], :message => "already exists" } })

  has_many(:service_locations, { :class_name => "ServiceLocation", :foreign_key => "service_provider_id", :dependent => :nullify })

  has_many(:offerings, { :class_name => "Offering", :foreign_key => "service_provider_id", :dependent => :nullify })

  has_many(:reviews, { :class_name => "Review", :foreign_key => "service_provider_id", :dependent => :destroy })

  has_many(:users, { :through => :reviews, :source => :user })

  has_many(:services, { :through => :offerings, :source => :service })

  has_many(:neighborhoods, { :through => :service_locations, :source => :neighborhood })


end

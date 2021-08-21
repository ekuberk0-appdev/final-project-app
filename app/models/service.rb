# == Schema Information
#
# Table name: services
#
#  id              :integer          not null, primary key
#  name            :string
#  offerings_count :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Service < ApplicationRecord

  validates(:name, { :presence => true })

  validates(:name, { :uniqueness => true })

  has_many(:offerings, { :class_name => "Offering", :foreign_key => "service_id", :dependent => :nullify })

  has_many(:service_providers, { :through => :offerings, :source => :service_provider })


end

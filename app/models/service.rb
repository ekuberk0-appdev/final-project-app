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
end

# == Schema Information
#
# Table name: favorites
#
#  id          :integer          not null, primary key
#  image       :string
#  notes       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  offering_id :integer
#  user_id     :integer
#
class Favorite < ApplicationRecord
end

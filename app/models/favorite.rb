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

  validates(:user_id, { :presence => true })

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })

  belongs_to(:offering, { :required => true, :class_name => "Offering", :foreign_key => "offering_id", :counter_cache => true })



end

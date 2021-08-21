# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  favorites_count :integer
#  password_digest :string
#  reviews_count   :integer
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  validates(:username, { :presence => true })
  validates(:username, { :uniqueness => true })

  has_many(:favorites, { :class_name => "Favorite", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:reviews, { :class_name => "Review", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:service_providers, { :through => :reviews, :source => :service_provider })

  has_many(:offerings, { :through => :favorites, :source => :offering })

end

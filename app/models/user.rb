class User < ApplicationRecord
  has_many :user_pledges
  has_many :pledges, :through => :user_pledges
  has_many :posts
end

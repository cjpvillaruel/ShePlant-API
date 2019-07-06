class Pledge < ApplicationRecord
  has_many :user_pledges
  has_many :users, :through => :user_pledges
  has_many :posts
end

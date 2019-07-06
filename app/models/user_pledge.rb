class UserPledge < ApplicationRecord
  belongs_to :user
  belongs_to :pledge
end
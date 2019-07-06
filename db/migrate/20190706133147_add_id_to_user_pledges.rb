class AddIdToUserPledges < ActiveRecord::Migration[5.2]
  def change
    add_column :user_pledges, :id, :primary_key
  end
end

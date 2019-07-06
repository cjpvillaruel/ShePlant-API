class CreateJoinTableUsersPledge < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pledges, id: false do |t|
      t.references :user, index: true, foreign_key: true
      t.references :pledge, index: true, foreign_key: true
    end
  end
end

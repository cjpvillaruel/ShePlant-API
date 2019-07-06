class CreatePledges < ActiveRecord::Migration[5.2]
  def change
    create_table :pledges do |t|
      t.string :title
      t.string :description
      t.string :duration

      t.timestamps
    end
  end
end

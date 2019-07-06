class AddCategoryToPledges < ActiveRecord::Migration[5.2]
  def change
    add_column :pledges, :category, :string
  end
end

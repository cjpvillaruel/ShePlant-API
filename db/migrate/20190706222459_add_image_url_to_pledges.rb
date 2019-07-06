class AddImageUrlToPledges < ActiveRecord::Migration[5.2]
  def change
    add_column :pledges, :image_url, :string
  end
end

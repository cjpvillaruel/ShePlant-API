class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user, foreign_key: true
    add_reference :posts, :pledge, foreign_key: true
  end
end

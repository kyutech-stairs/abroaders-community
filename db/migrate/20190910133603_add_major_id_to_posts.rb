class AddMajorIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :major, index: true
  end
end

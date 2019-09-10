class AddTermIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :term, index: true
  end
end

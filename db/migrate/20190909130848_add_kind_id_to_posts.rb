class AddKindIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :kind, index: true
  end
end

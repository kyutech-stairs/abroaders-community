class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :term
      t.string :image
      t.string :budget

      t.text :comment

      t.references :stay_type
      t.references :country
      t.references :language
      t.references :user

      t.timestamps
    end
  end
end

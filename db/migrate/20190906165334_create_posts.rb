class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :image
      t.string :school
      t.text :school_address
      t.text :comment_advice
      t.text :comment_country
      t.text :comment_school
      t.text :comment_social

      t.references :stay_type
      t.references :country
      t.references :language
      t.references :user

      t.timestamps
    end
  end
end

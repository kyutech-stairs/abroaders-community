class CreatePosts < ActiveRecord::Migration[5.2] 
  def change
    create_table :posts do |t|
      t.references :country
      t.references :stay
      t.references :kind
      t.references :user
      t.references :language
      t.string :region
      t.string :school
      t.string :school_address
      t.string :major
      t.string :purpose
      t.string :term
      t.string :flight_plan
      t.string :photo
      t.string :movie
      t.string :budget
      t.string :language_level
      t.text :comment_impression
      t.text :comment_school
      t.text :comment_food
      t.text :comment_stay
      t.text :comment_manner
      t.text :comment_social
      t.text :comment_advice
      t.text :comment_accident
      t.text :comment_anxiety

      t.references :bookmark
      t.references :like
    end
    add_index :posts, [:user_id, :created_at]
  end
end

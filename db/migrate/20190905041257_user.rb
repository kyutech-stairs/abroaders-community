class User < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.references :gender
      t.references :country
      t.references :language

      t.timestamps
    end
  end
end

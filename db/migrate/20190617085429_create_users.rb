class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :sex
      t.string :address
      t.string :belonged_uni
      t.string :email
      
      t.timestamps
    end
  end
end

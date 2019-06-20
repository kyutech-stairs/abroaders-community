class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :sex, foreign_key: true
  end
end

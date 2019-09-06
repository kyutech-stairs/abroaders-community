class RemoveCountryFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :country, index: true
    remove_reference :users, :language, index: true
  end
end

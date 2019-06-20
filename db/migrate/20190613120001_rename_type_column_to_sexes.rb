class RenameTypeColumnToSexes < ActiveRecord::Migration[5.2]
  def change
    rename_column :sexes, :type, :name
  end
end

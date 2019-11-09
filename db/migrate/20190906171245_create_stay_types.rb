class CreateStayTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :stay_types do |t|
      t.string :name

      t.timestamps
    end
  end
end

class AddBudgetIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :budget, index: true
  end
end

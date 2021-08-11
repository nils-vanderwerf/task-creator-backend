class RemoveCategoriesIFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :categories_id
  end
end

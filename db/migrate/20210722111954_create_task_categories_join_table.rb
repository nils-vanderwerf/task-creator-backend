class CreateTaskCategoriesJoinTable < ActiveRecord::Migration[6.1]
  def change
      create_table :task_categories do |t|
      t.references :category
      t.references :task

      t.timestamps null: false
    end
  end
end

class AddUserCategoriesJoinTable < ActiveRecord::Migration[6.1]
    def change
      create_table :user_categories do |t|
        t.references :user, index: true, foreign_key: true
        t.references :categories, index: true, foreign_key: true

        t.timestamps null: false
    end
  end
end

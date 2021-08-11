class Category < ApplicationRecord
    has_many :tasks_categories
    has_many :tasks, :through => :task_categories

    has_many :user_categories
    has_many :users, :through => :user_categories
    # has_many :users, :through => :user_categories
end

class Task < ApplicationRecord
    belongs_to :user
    has_many :task_categories
    has_many :categories, through: :task_categories
    # validates :title, required: true
    
    accepts_nested_attributes_for :categories

    def category_list
        self.categories
    end
end

class CategoriesController < ApplicationController

    def get_categories
        puts "Hits get tasks"
        render json: {categories: Category.all}
      end
end

class CategoriesController < ApplicationController

    #GET/categories
    def index
      categories = Category.all 
      render json: categories
    end #index
  
    #GET/categories/1
    def show
      set_category
      render json: @category
    end #show
  
    private
    def set_category
      @category = Category.find_by(id: params[:id])
    end #set_recipe
  
  end #class
class RecipesController < ApplicationController

  #GET/recipes
  def index
    #binding.pry 
    if params[:user_id]
      recipes = User.find(params[:user_id].to_i).recipes 
      render json: recipes, include: [:notes]
    else
      recipes = Recipe.all 
      render json: recipes, include: [:notes]
    end
  end #index

  #GET/recipes/1
  def show
    set_recipe 
    render json: @recipe
  end #show

  #POST/recipes
  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe, include: [:notes], status: :created
    else
      puts "recipe not saved"
      render json: {errors: recipe.errors}, status: :unprocessable_entity
    end
  end #create

  #DELETE
  def destroy
    set_recipe 
    @recipe.notes.each{|note| note.destroy}
    @recipe.destroy 
    render json: {}, status: :no_content
  end #destroy

  private
  #Only allow a trusted parameter "white list" through
  def set_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end #set_recipe

  def recipe_params
    params.require(:recipe).permit(:name, :url, :img_url, :category_id, :user_id)
  end #recipe_params

end #class
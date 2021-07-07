class RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token


  def search
    query = recipe_params[:ingredients].join(',')
    render json: Recipe.where('ingredients <@ ?', "{#{query}}")
  end

  def ingredients
    render json: Recipe.all_ingredients
  end

  private

  def recipe_params
    params.require(:recipe).permit(ingredients: [])
  end
end


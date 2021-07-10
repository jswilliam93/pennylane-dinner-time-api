class RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token


  def search
    render json: Recipe.by_ingredients(recipe_params[:ingredients].join(','))
  end

  def ingredients
    render json: Recipe.all_ingredients
  end

  private

  def recipe_params
    params.require(:recipe).permit(ingredients: [])
  end
end


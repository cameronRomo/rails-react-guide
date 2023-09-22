class Api::V1::NewRecipesController < ApplicationController
  before_action :set_recipe, only: %i(show destroy)

  def index
    @recipes = NewRecipe.all.order created_at: :desc
    render json: @recipes
  end

  def create
    recipe = NewRecipe.create! recipe_params
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def show
    render json: @recipe
  end

  def destroy
    @recipe&.destroy
    render json: { message: 'Recipe deleted!'}
  end

  private

  def recipe_params
    params.permit :name, :image, :ingredients, :instruction
  end

  def set_recipe
    @recipe = NewRecipe.find params[:id]
  end
end

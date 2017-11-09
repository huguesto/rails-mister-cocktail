class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i(show)
  def index
    @cockstails = Cocktail.all
  end

  def show
  end

  def
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
  end

private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

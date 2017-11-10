class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i(show update)

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    return render :new unless @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end




private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params

    params.require(:cocktail).permit(:name, :description, :photo)
  end
end

class CocktailsController < ApplicationController

   before_action :set_cocktail, only: [:show, :new, :create]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end

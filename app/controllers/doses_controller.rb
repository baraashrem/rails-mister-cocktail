class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  def new
    @dose = Dose.new
  end

  def create
    names = params[:dose][:ingredient][1..-1]
    names.each do |name|
      ingredient = Ingredient.find_or_create_by(name: name)
      Dose.create(cocktail: @cocktail, ingredient: ingredient)
    end
  redirect_to @cocktail
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end

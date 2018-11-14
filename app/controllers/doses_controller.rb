class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    names = params[:dose][:ingredient][1..-1]
    names.each do |name|
      ingredient = Ingredient.find_or_create_by(name: name)
      Dose.create(cocktail: @cocktail, ingredient: ingredient)
    end
    redirect_to @cocktail
  end
end

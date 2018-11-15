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
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

    # @dose = Dose.new(dose_params)
    # @cocktail = Cocktail.find(params[:cocktail_id])
    # names = params[:dose][:ingredient][1..-1]
    # names.each do |name|
    #   ingredient = Ingredient.find_or_create_by(name: name)
    #   Dose.create(cocktail: @cocktail, ingredient: ingredient)

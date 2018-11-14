class DosesController < ApplicationController
  before_action :set_cocktail, only: %i[new create]

  def new
    # raise
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])

    if @dose.save!
      redirect_to cocktails_path
    else
      render 'new'
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

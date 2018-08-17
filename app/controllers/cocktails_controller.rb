class CocktailsController < ApplicationController
  before_action :cocktail_param, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
    # @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    # @cocktail = Cocktail.find(params[:id])
  end

  def update
    # @cocktail = Cocktail.find(params[:id])
    @cocktail.update(params[:cocktail])
  end

  def destroy
    # @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
  end

  private

  def cocktail_param
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)

  end
end

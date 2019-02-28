class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :destroy, :edit]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  def edit
  end

  def update
    @flat.update(flats_params)
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flats_params
    params.require(:flats).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end

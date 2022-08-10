class FlatsController < ApplicationController
  before_action :set_flat, only: %i[ show edit update destroy ]



  def index
    @flats = Flat.all
  end

  def show
  end

  def edit
  end

  def create

  end

  def update
    @flat.update
  end

  def new
    @flat = Flat.new(flat_params)
  end

  def destroy
  end


  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end



end

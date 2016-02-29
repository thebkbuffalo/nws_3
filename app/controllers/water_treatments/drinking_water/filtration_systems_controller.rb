class WaterTreatments::DrinkingWater::FiltrationSystemsController < ApplicationController
  before_action :set_filtration_system, only: [:show, :edit, :update, :destroy]

  def index
    @filtrations = FiltrationSystem.all
  end

  def new
    @filtration = FiltrationSystem.new
  end

  def create
    @filtration = FiltrationSystem.new(filtration_params)
    respond_to do |format|
      if @filtration.save
        format.html { redirect_to '/water_treatments/drinking_water/filtration_systems', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @filtration.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/drinking_water/filtration_systems', notice: 'picture deleted' }
    end
  end

  private

    def set_filtration_system
      @filtration = FiltrationSystem.find(params[:id])
    end

    def filtration_params
      params.require(:filtration_system).permit(:filt_pic, :filt_tag)
    end

end

class WaterTreatments::Commercial::Office::WaterCoolersController < ApplicationController
  before_action :set_water_cooler, only: [:show, :edit, :update, :destroy]
  
  def index
    @watercoolers = WaterCooler.all
  end

  def new
    @watercooler = WaterCooler.new
  end

  def create
    @watercooler = WaterCooler.new(water_cooler_params)
    respond_to do |format|
      if @watercooler.save
        format.html { redirect_to '/water_treatments/commercial/office/water_coolers', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @watercooler.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/commercial/office/water_coolers', notice: 'picture deleted' }
    end
  end

  private

    def set_water_cooler
      @watercooler = WaterCooler.find(params[:id])
    end

    def water_cooler_params
      params.require(:water_cooler).permit(:wc_pic, :wc_tag)
    end

end

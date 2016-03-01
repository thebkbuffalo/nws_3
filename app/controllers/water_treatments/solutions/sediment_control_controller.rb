class WaterTreatments::Solutions::SedimentControlController < ApplicationController
  before_action :set_sediment, only: [:show, :edit, :update, :destroy]

  def index
    @sediments = SedimentControl.all
  end

  def new
    @sediment = SedimentControl.new
  end

  def create
    @sediment = SedimentControl.new(sediment_params)
    respond_to do |format|
      if @sediment.save
        format.html { redirect_to '/water_treatments/solutions/sediment_control', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @sediment.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/sediment_control', notice: 'picture deleted' }
    end
  end

  private

    def set_sediment
      @sediment = SedimentControl.find(params[:id])
    end

    def sediment_params
      params.require(:sediment_control).permit(:sediment_pic, :sediment_tag)
    end

end

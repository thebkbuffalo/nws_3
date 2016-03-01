class WaterTreatments::Solutions::WaterConditionerController < ApplicationController
  before_action :set_water_condition, only: [:show, :edit, :update, :destroy]

  def index
    @water_conditioners = WaterConditioner.all
  end

  def new
    @water_conditioner = WaterConditioner.new
  end

  def create
    @water_conditioner = WaterConditioner.new(water_condition_params)
    respond_to do |format|
      if @water_conditioner.save
        format.html { redirect_to '/water_treatments/solutions/water_conditioner', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @water_conditioner.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/water_conditioner', notice: 'picture deleted' }
    end
  end

  private

    def set_water_condition
      @water_conditioner = WaterConditioner.find(params[:id])
    end

    def water_condition_params
      params.require(:water_conditioner).permit(:water_condition_pic, :water_condition_tag)
    end

end

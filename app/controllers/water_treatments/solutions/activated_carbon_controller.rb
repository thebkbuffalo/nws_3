class WaterTreatments::Solutions::ActivatedCarbonController < ApplicationController
  before_action :set_activated_carbon, only: [:show, :edit, :update, :destroy]

  def index
    @active_carbons = ActivatedCarbon.all
  end

  def new
    @active_carbon = ActivatedCarbon.new
  end

  def create
    @active_carbon = ActivatedCarbon.new(active_carbon_params)
    respond_to do |format|
      if @active_carbon.save
        format.html { redirect_to '/water_treatments/solutions/activated_carbon', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @active_carbon.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/activated_carbon', notice: 'picture destroyed' }
    end
  end

  private

    def set_activated_carbon
      @active_carbon = ActivatedCarbon.find(params[:id])
    end

    def active_carbon_params
      params.require(:activated_carbon).permit(:ac_pic, :ac_tag)
    end


end

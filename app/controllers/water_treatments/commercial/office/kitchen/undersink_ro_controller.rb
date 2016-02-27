class WaterTreatments::Commercial::Office::Kitchen::UndersinkRoController < ApplicationController
  before_action :set_undersink_ro, only: [:show, :edit, :update, :destroy]

  def index
    @undersinks = UndersinkRo.all
  end

  def show
  end

  def new
    @undersink = UndersinkRo.new
  end

  def edit
  end

  def create
    @undersink = UndersinkRo.new(undersink_ro_params)
    respond_to do |format|
      if @undersink.save
        format.html { redirect_to '/water_treatments/commercial/office/kitchen/undersink_ro', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @undersink.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/commercial/office/kitchen/undersink_ro', notice: 'picture deleted' }
    end
  end

  private

  def set_undersink_ro
    @undersink = UndersinkRo.find(params[:id])
  end

  def undersink_ro_params
    params.require(:undersink_ro).permit(:us_ro_pic, :us_ro_tag)
  end
end

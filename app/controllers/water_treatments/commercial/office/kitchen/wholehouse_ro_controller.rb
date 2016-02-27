class WaterTreatments::Commercial::Office::Kitchen::WholehouseRoController < ApplicationController
  before_action :set_wholehouse_ro, only: [:show, :edit, :update, :destroy]

  def index
    @wholehouses = WholehouseRo.all
  end

  def show
  end

  def new
    @wholehouse = WholehouseRo.new
  end

  def create
    @wholehouse = WholehouseRo.new(wholehouse_ro_params)
    respond_to do |format|
      if @wholehouse.save
        format.html { redirect_to '/water_treatments/commercial/office/kitchen/wholehouse_ro', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @wholehouse.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/commercial/office/kitchen/wholehouse_ro', notice: 'picture deleted' }
    end
  end

  private

  def set_wholehouse_ro
    @wholehouse = WholehouseRo.find(params[:id])
  end

  def wholehouse_ro_params
    params.require(:wholehouse_ro).permit(:wh_ro_pic, :wh_ro_tag)
  end
end

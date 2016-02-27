class WaterTreatments::Commercial::Office::Kitchen::BasementRoController < ApplicationController
  before_action :set_basement_ro, only: [:show, :edit, :update, :destroy]

  def index
    @basements = BasementRo.all
  end

  def show
  end

  def new
    @basement = BasementRo.new
  end

  def edit
  end

  def create
    @basement = BasementRo.new(basement_ro_params)
    respond_to do |format|
      if @basement.save
        format.html { redirect_to '/water_treatments/commercial/office/kitchen/basement_ro', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @basement.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/commercial/office/kitchen/basement_ro', notice: 'picture deleted' }
    end
  end

  private

  def set_basement_ro
    @basement = BasementRo.find(params[:id])
  end

  def basement_ro_params
    params.require(:basement_ro).permit(:b_ro_pic, :b_ro_tag)
  end
end

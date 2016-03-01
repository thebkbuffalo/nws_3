class WaterTreatments::Solutions::OzoneController < ApplicationController
  before_action :set_ozone, only: [:show, :edit, :update, :destroy]

  def index
    @ozones = Ozone.all
  end

  def new
    @ozone = Ozone.new
  end

  def create
    @ozone = Ozone.new(ozone_params)
    respond_to do |format|
      if @ozone.save
        format.html { redirect_to '/water_treatments/solutions/ozone', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @ozone.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/ozone', notice: 'picture deleted' }
    end
  end

  private

    def set_ozone
      @ozone = Ozone.find(params[:id])
    end

    def ozone_params
      params.require(:ozone).permit(:ozone_pic, :ozone_tag)
    end

end

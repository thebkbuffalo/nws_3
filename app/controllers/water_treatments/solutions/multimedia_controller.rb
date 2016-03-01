class WaterTreatments::Solutions::MultimediaController < ApplicationController
  before_action :set_multimedia, only: [:only, :show, :edit, :destroy]

  def index
    @multimedias = Multimedium.all
  end

  def new
    @multimedia = Multimedium.new
  end

  def create
    @multimedia = Multimedium.new(multimedia_params)
    respond_to do |format|
      if @multimedia.save
        format.html { redirect_to '/water_treatments/solutions/multimedia', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @multimedia.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/multimedia', notice: 'picture deleted' }
    end
  end

  private

    def set_multimedia
      @multimedia = Multimedium.find(params[:id])
    end

    def multimedia_params
      params.require(:multimedium).permit(:multimedia_pic, :multimedia_tag)
    end

end

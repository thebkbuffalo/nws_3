class WaterTreatments::Solutions::BirmController < ApplicationController
  before_action :set_birm, only: [:show, :edit, :update, :destroy]

  def index
    @birms = Birm.all
  end

  def new
    @birm = Birm.new
  end

  def create
    @birm = Birm.new(birm_params)
    respond_to do |format|
      if @birm.save
        format.html { redirect_to '/water_treatments/solutions/birm', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @birm.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/birm', notice: 'picture deleted' }
    end
  end

  private

    def set_birm
      @birm = Birm.find(params[:id])
    end

    def birm_params
      params.require(:birm).permit(:birm_pic, :birm_tag)
    end

end

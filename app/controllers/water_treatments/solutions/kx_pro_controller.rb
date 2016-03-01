class WaterTreatments::Solutions::KxProController < ApplicationController
  before_action :set_kx_pro, only: [:show, :edit, :update, :destroy]

  def index
    @kx_pros = KxPro.all
  end

  def new
    @kx_pro = KxPro.new
  end

  def create
    @kx_pro = KxPro.new(kx_params)
    respond_to do |format|
      if @kx_pro.save
        format.html { redirect_to '/water_treatments/solutions/kx_pro', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @kx_pro.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/kx_pro', notice: 'picture deleted' }
    end
  end

  private

    def set_kx_pro
      @kx_pro = KxPro.find(params[:id])
    end

    def kx_params
      params.require(:kx_pro).permit(:kx_pic, :kx_tag)
    end


end

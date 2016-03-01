class WaterTreatments::Solutions::UltravioletController < ApplicationController
  before_action :set_ultraviolet, only: [:show, :edit, :update, :destroy]

  def index
    @ultras = Ultraviolet.all
  end

  def new
    @ultra = Ultraviolet.new
  end

  def create
    @ultra = Ultraviolet.new(ultra_params)
    respond_to do |format|
      if @ultra.save
        format.html { redirect_to '/water_treatments/solutions/ultraviolet', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @ultra.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/ultraviolet', notice: 'picture deleted' }
    end
  end

  private

    def set_ultraviolet
      @ultra = Ultraviolet.find(params[:id])
    end

    def ultra_params
      params.require(:ultraviolet).permit(:ultra_pic, :ultra_tag)
    end

end

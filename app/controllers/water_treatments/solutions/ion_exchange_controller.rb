class WaterTreatments::Solutions::IonExchangeController < ApplicationController
  before_action :set_ion_exchange, only: [:show, :edit, :update, :destroy]

  def index
    @ions = IonExchange.all
  end

  def new
    @ion = IonExchange.new
  end

  def create
    @ion = IonExchange.new(ion_params)
    respond_to do |format|
      if @ion.save
        format.html { redirect_to '/water_treatments/solutions/ion_exchange', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @ion.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/ion_exchange', notice: 'picture deleted' }
    end
  end

  private

    def set_ion_exchange
      @ion = IonExchange.find(params[:id])
    end

    def ion_params
      params.require(:ion_exchange).permit(:io_pic, :io_tag)
    end


end

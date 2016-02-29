class WaterTreatments::DrinkingWater::FaucetSelectionsController < ApplicationController
  before_action :set_faucet_selection, only: [:show, :edit, :update, :destroy]

  def index
    @faucets = FaucetSelection.all
  end

  def new
    @faucet = FaucetSelection.new
  end

  def create
    @faucet = FaucetSelection.new(faucet_params)
    respond_to do |format|
      if @faucet.save
        format.html { redirect_to '/water_treatments/drinking_water/faucet_selections', notice: 'Picture Added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @faucet.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/drinking_water/faucet_selections', notice: 'picture deleted' }
    end
  end

  private

    def set_faucet_selection
      @faucet = FaucetSelection.find(params[:id])
    end

    def faucet_params
      params.require(:faucet_selection).permit(:faucet_pic, :faucet_tag)
    end

end

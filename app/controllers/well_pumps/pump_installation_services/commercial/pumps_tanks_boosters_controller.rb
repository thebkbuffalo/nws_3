class WellPumps::PumpInstallationServices::Commercial::PumpsTanksBoostersController < ApplicationController
  before_action :set_pumps_tanks_boosters, only: [:show, :edit, :update, :destroy]

  def index
    @pumpstanksboosters = PumpsTanksBooster.all
  end

  def show
  end

  def new
    @pumpstanksbooster = PumpsTanksBooster.new
  end

  def edit
  end

  def create
    @pumpstanksbooster = PumpsTanksBooster.new(pumps_tanks_boosters_params)
    respond_to do |format|
      if @pumpstanksbooster.save
        format.html { redirect_to '/well_pumps/pump_installation_services/commercial/pumps_tanks_boosters', notice: 'Picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @pumpstanksbooster.destroy
    respond_to do |format|
      format.html { redirect_to '/well_pumps/pump_installation_services/commercial/pumps_tanks_boosters', notice: 'picture deleted' }
    end
  end

  private

    def set_pumps_tanks_boosters
      @pumpstanksbooster = PumpsTanksBooster.find(params[:id])
    end

    def pumps_tanks_boosters_params
      params.require(:pumps_tanks_booster).permit(:ptb_pic, :ptb_tag)
    end
end

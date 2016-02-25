class WellPumps::PumpInstallationServices::Commercial::BackhoeServicesController < ApplicationController
  before_action :set_backhoe, only: [:show, :edit, :update, :destroy]

  def index
    @backhoeservices = BackhoeService.all
  end

  def show
  end

  def new
    @backhoeservice = BackhoeService.new
  end

  def edit
  end

  def create
    @backhoeservice = BackhoeService.new(backhoe_params)
    respond_to do |format|
      if @backhoeservice.save
        format.html { redirect_to '/well_pumps/pump_installation_services/commercial/backhoe_services', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @backhoeservice.destroy
    respond_to do |format|
      format.html { redirect_to '/well_pumps/pump_installation_services/commercial/backhoe_services', notice: 'picture deleted' }
    end
  end

  private

    def set_backhoe
      @backhoeservice = BackhoeService.find(params[:id])
    end

    def backhoe_params
      params.require(:backhoe_service).permit(:bh_pic, :bh_tag)
    end
end

class WellPumps::PumpInstallationServices::Commercial::CraneServicesController < ApplicationController
  before_action :set_crane_service, only: [:show, :edit, :update, :destroy]

  def index
    @craneservices = CraneService.all
  end

  def show
  end

  def new
    @craneservice = CraneService.new
  end

  def edit
  end

  def create
    @craneservice = CraneService.new(crane_service_params)
    respond_to do |format|
      if @craneservice.save
        format.html { redirect_to '/well_pumps/pump_installation_services/commercial/crane_services', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @craneservice.destroy
    respond_to do |format|
      format.html { redirect_to '/well_pumps/pump_installation_services/commercial/crane_services', notice: 'picture deleted' }
    end
  end

  private

    def set_crane_service
      @craneservice = CraneService.find(params[:id])
    end

    def crane_service_params
      params.require(:crane_service).permit(:crane_pic, :crane_tag)
    end
end

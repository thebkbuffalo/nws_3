class WellPumps::EmergencyservicesController < ApplicationController
  before_action :set_emergencyservices, only: [:show, :edit, :update, :destroy]

  def index
    @emergencyservices = Emergencyservice.all
  end

  def show
  end

  def new
    @emergencyservice = Emergencyservice.new
  end

  def edit
  end

  def create
    @emergencyservice = Emergencyservice.new(emergencyservices_params)
    respond_to do |format|
      if @emergencyservice.save
        format.html { redirect_to well_pumps_emergencyservices_url, notice: 'New Emergency Service picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @emergencyservice.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_emergencyservices_url, notice: 'Picture Deleted' }
    end
  end

  private

    def set_emergencyservices
      @emergencyservice = Emergencyservice.find(params[:id])
    end

    def emergencyservices_params
      params.require(:emergencyservice).permit(:es_pic, :es_tag)
    end
end

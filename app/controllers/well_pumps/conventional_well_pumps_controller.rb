class WellPumps::ConventionalWellPumpsController < ApplicationController
  before_action :set_conventional_well_pump, only: [:show, :edit, :update, :destroy]

  def index
    @convetionalwellpumps = ConventionalWellPump.all
  end

  def show
  end

  def new
    @convetionalwellpump = ConventionalWellPump.new
  end

  def edit
  end

  def create
    @convetionalwellpump = ConventionalWellPump.new(conventional_well_pump_params)
    respond_to do |format|
      if @convetionalwellpump.save
        format.html { redirect_to well_pumps_conventional_well_pumps_url, notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @convetionalwellpump.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_conventional_well_pumps_url, notice: 'picture deleted' }
    end
  end

  private

    def set_conventional_well_pump
      @convetionalwellpump = ConventionalWellPump.find(params[:id])
    end

    def conventional_well_pump_params
      params.require(:conventional_well_pump).permit(:cwp_pic, :cwp_tag)
    end
end

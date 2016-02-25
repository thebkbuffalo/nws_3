class WellPumps::JetpumpsController < ApplicationController
  before_action :set_jetpumps, only: [:show, :edit, :update, :destroy]

  def index
    @jetpumps = Jetpump.all
  end

  def show
  end

  def new
    @jetpump = Jetpump.new
  end

  def create
    @jetpump = Jetpump.new(jetpumps_params)

    respond_to do |format|
      if @jetpump.save
        format.html { redirect_to well_pumps_jetpumps_url, notice: 'Jetpump picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @jetpump.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_jetpumps_url, notice: 'Picture deleted!' }
    end
  end

  private

    def set_jetpumps
      @jetpump = Jetpump.find(params[:id])
    end

    def jetpumps_params
      params.require(:jetpump).permit(:jp_pic, :jp_tag)
    end
end

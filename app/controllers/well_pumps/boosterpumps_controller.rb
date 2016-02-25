class WellPumps::BoosterpumpsController < ApplicationController
  before_action :set_boosterpumps, only: [:show, :edit, :update, :destroy]

  def index
    @boosterpumps = Boosterpump.all
  end

  def show
  end

  def new
    @boosterpump = Boosterpump.new
  end

  def edit
  end

  def create
    @boosterpump = Boosterpump.new(boosterpumps_params)

    respond_to do |format|
      if @boosterpump.save
        format.html { redirect_to well_pumps_boosterpumps_url, notice: 'Boosterpump picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @boosterpump.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_boosterpumps_url, notice: 'Picture deleted!' }
    end
  end

  private
    def set_boosterpumps
      @boosterpump = Boosterpump.find(params[:id])
    end

    def boosterpumps_params
      params.require(:boosterpump).permit(:bp_pic, :bp_tag)
    end
end

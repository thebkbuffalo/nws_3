class WellPumps::PressuretanksController < ApplicationController
  before_action :set_pressuretanks, only: [:show, :edit, :update, :destroy]

  def index
    @pressuretanks = Pressuretank.all
  end

  def show
  end

  def new
    @pressuretank = Pressuretank.new
  end

  def edit
  end

  def create
    @pressuretank = Pressuretank.new(pressuretanks_params)

    respond_to do |format|
      if @pressuretank.save
        format.html { redirect_to well_pumps_pressuretanks_url, notice: 'Pressure Tank picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @pressuretank.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_pressuretanks_url, notice: 'Picture deleted' }
    end
  end

  private
    def set_pressuretanks
      @pressuretank = Pressuretank.find(params[:id])
    end

    def pressuretanks_params
      params.require(:pressuretank).permit(:pt_pic, :pt_tag)
    end
end

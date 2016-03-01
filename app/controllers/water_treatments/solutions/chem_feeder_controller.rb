class WaterTreatments::Solutions::ChemFeederController < ApplicationController
  before_action :set_chem_feed, only: [:show, :edit, :update, :destroy]

  def index
    @chems = ChemFeeder.all
  end

  def new
    @chem = ChemFeeder.new
  end

  def create
    @chem = ChemFeeder.new(chem_params)
    respond_to do |format|
      if @chem.save
        format.html { redirect_to '/water_treatments/solutions/chem_feeder', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @chem.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/chem_feeder', notice: 'picture deleted' }
    end
  end

  private

    def set_chem_feed
      @chem = ChemFeeder.find(params[:id])
    end

    def chem_params
      params.require(:chem_feeder).permit(:chem_pic, :chem_tag)
    end

end

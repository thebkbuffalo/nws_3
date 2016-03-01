class WaterTreatments::Solutions::ReverseOsmosisController < ApplicationController
  before_action :set_reverse_osmosis, only: [:show, :edit, :update, :destroy]

  def index
    @reverse_osmoses = ReverseOsmosis.all
  end

  def new
    @reverse_osmosis = ReverseOsmosis.new
  end

  def create
    @reverse_osmosis = ReverseOsmosis.new(ro_params)
    respond_to do |format|
      if @reverse_osmosis.save
        format.html { redirect_to '/water_treatments/solutions/reverse_osmosis', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @reverse_osmosis.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/reverse_osmosis', notice: 'picture deleted' }
    end
  end

  private

    def set_reverse_osmosis
      @reverse_osmosis = ReverseOsmosis.find(params[:id])
    end

    def ro_params
      params.require(:reverse_osmosis).permit(:ro_pic, :ro_tag)
    end

end

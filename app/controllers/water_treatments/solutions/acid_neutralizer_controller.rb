class WaterTreatments::Solutions::AcidNeutralizerController < ApplicationController
  before_action :set_acid, only: [:show, :edit, :update, :destroy]

  def index
    @acids = AcidNeutralizer.all
  end

  def new
    @acid = AcidNeutralizer.new
  end

  def create
    @acid = AcidNeutralizer.new(acid_params)
    respond_to do |format|
      if @acid.save
        format.html { redirect_to '/water_treatments/solutions/acid_neutralizer', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @acid.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/acid_neutralizer', notice: 'picture added'}
    end
  end

  private

    def set_acid
      @acid = AcidNeutralizer.find(params[:id])
    end

    def acid_params
      params.require(:acid_neutralizer).permit(:acid_pic, :acid_tag)
    end

end

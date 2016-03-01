class WaterTreatments::Solutions::AerationController < ApplicationController
  before_action :set_aeration, only: [:show, :edit, :update, :destroy]

  def index
    @aerations = Aeration.all
  end

  def new
    @aeration = Aeration.new
  end

  def create
    @aeration = Aeration.new(aeration_params)
    respond_to do |format|
      if @aeration.save
        format.html { redirect_to '/water_treatments/solutions/aeration', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @aeration.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/aeration', notice: 'picture deleted' }
    end
  end

  private

    def set_aeration
      @aeration = Aeration.find(params[:id])
    end

    def aeration_params
      params.require(:aeration).permit(:aeration_pic, :aeration_tag)
    end
    
end

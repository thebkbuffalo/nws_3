class WaterTreatments::Solutions::IronSulfurController < ApplicationController
  before_action :set_iron_sulfur, only: [:show, :edit, :update, :destroy]

  def index
    @irons = IronSulfur.all
  end

  def new
    @iron = IronSulfur.new
  end

  def create
    @iron = IronSulfur.new(iron_params)
    respond_to do |format|
      if @iron.save
        format.html { redirect_to '/water_treatments/solutions/iron_sulfur', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @iron.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/solutions/iron_sulfur', notice: 'picture deleted'}
    end
  end

  private

    def set_iron_sulfur
      @iron = IronSulfur.find(params[:id])
    end

    def iron_params
      params.require(:iron_sulfur).permit(:iron_pic, :iron_tag)
    end

end

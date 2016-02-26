class WellPumps::ConstantpressuresystemsController < ApplicationController
  before_action :set_cps, only: [:show, :edit, :update, :destroy]

  def index
    @constantpressuresystems = Constantpressuresystem.all
  end

  def new
    @constantpressuresystem = Constantpressuresystem.new
  end

  def create
    @constantpressuresystem = Constantpressuresystem.new(cps_params)
    respond_to do |format|
      if @constantpressuresystem.save
        format.html { redirect_to well_pumps_constantpressuresystems_url, notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @constantpressuresystem.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_constantpressuresystems_url, notice: 'picture deleted' }
    end
  end

  private

    def set_cps
      @constantpressuresystem = Constantpressuresystem.find(params[:id])
    end

    def cps_params
      params.require(:constantpressuresystem).permit(:cps_pic, :cps_tag)
    end
end

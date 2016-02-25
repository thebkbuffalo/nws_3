class WellPumps::CustomrepairsController < ApplicationController
  before_action :set_customrepairs, only: [:show, :edit, :update, :destroy]

  def index
    @customrepairs = Customrepair.all
  end

  def show
  end

  def new
    @customrepair = Customrepair.new
  end

  def edit
  end

  def create
    @customrepair = Customrepair.new(customrepairs_params)
    respond_to do |format|
      if @customrepair.save
        format.html { redirect_to well_pumps_customrepairs_url, notice: 'New Custom Repair picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @customrepair.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_customrepairs_url, notice: 'Picture Deleted' }
    end
  end

  private

    def set_customrepairs
      @customrepair = Customrepair.find(params[:id])
    end

    def customrepairs_params
      params.require(:customrepair).permit(:cr_pic, :cr_tag)
    end
end

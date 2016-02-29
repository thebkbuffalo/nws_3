class WaterTreatments::DrinkingWater::OptionalItemsController < ApplicationController
  before_action :set_optional_item, only: [:show, :edit, :update, :destroy]

  def index
    @options = OptionalItem.all
  end

  def new
    @option = OptionalItem.new
  end

  def create
    @option = OptionalItem.new(option_params)
    respond_to do |format|
      if @option.save
        format.html { redirect_to '/water_treatments/drinking_water/optional_items', notice: 'picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @option.destroy
    respond_to do |format|
      format.html { redirect_to '/water_treatments/drinking_water/optional_items', notice: 'picture deleted' }
    end
  end

  private

    def set_optional_item
      @option = OptionalItem.find(params[:id])
    end

    def option_params
      params.require(:optional_item).permit(:option_pic, :option_tag)
    end

end

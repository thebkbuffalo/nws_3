class WellPumps::NewservicelinesController < ApplicationController
  before_action :set_newservicelines, only: [:show, :edit, :update, :destroy]

  def index
    @newservicelines = Newserviceline.all
  end

  def show
  end

  def new
    @newserviceline = Newserviceline.new
  end

  def edit
  end

  def create
    @newserviceline = Newserviceline.new(newservicelines_params)
    binding.pry
    respond_to do |format|
      if @newserviceline.save
        format.html { redirect_to well_pumps_newservicelines_url, notice: 'New Service Line picture added' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
    @newserviceline.destroy
    respond_to do |format|
      format.html { redirect_to well_pumps_newservicelines_url , notice: 'Picture Deleted' }
    end
  end

  private

    def set_newservicelines
      @newserviceline = Newserviceline.find(params[:id])
    end

    def newservicelines_params
      params.require(:newserviceline).permit(:nsl_pic, :nsl_tag)
    end
end

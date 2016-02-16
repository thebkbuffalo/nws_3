class FloodPreventionsController < ApplicationController
  before_action :set_flood_prevention, only: [:show, :edit, :update, :destroy]

  # GET /flood_preventions
  # GET /flood_preventions.json
  def index
    @flood_preventions = FloodPrevention.all
  end

  # GET /flood_preventions/1
  # GET /flood_preventions/1.json
  def show
  end

  # GET /flood_preventions/new
  def new
    @flood_prevention = FloodPrevention.new
  end

  # GET /flood_preventions/1/edit
  def edit
  end

  # POST /flood_preventions
  # POST /flood_preventions.json
  def create
    @flood_prevention = FloodPrevention.new(flood_prevention_params)

    respond_to do |format|
      if @flood_prevention.save
        format.html { redirect_to @flood_prevention, notice: 'Flood prevention was successfully created.' }
        format.json { render :show, status: :created, location: @flood_prevention }
      else
        format.html { render :new }
        format.json { render json: @flood_prevention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flood_preventions/1
  # PATCH/PUT /flood_preventions/1.json
  def update
    respond_to do |format|
      if @flood_prevention.update(flood_prevention_params)
        format.html { redirect_to @flood_prevention, notice: 'Flood prevention was successfully updated.' }
        format.json { render :show, status: :ok, location: @flood_prevention }
      else
        format.html { render :edit }
        format.json { render json: @flood_prevention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flood_preventions/1
  # DELETE /flood_preventions/1.json
  def destroy
    @flood_prevention.destroy
    respond_to do |format|
      format.html { redirect_to flood_preventions_url, notice: 'Flood prevention was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flood_prevention
      @flood_prevention = FloodPrevention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flood_prevention_params
      params.fetch(:flood_prevention, {})
    end
end

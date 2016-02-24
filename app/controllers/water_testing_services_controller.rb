class WaterTestingServicesController < ApplicationController
  before_action :set_water_testing_service, only: [:show, :edit, :update, :destroy]

  # GET /water_testing_services
  # GET /water_testing_services.json
  def index
    @water_testing_services = WaterTestingService.all
  end

  # GET /water_testing_services/1
  # GET /water_testing_services/1.json
  def show
  end

  # GET /water_testing_services/new
  def new
    @water_testing_service = WaterTestingService.new
  end

  # GET /water_testing_services/1/edit
  def edit
  end

  # POST /water_testing_services
  # POST /water_testing_services.json
  def create
    @water_testing_service = WaterTestingService.new(water_testing_service_params)

    respond_to do |format|
      if @water_testing_service.save
        format.html { redirect_to '/water_testing_services', notice: 'Water testing service was successfully created.' }
        format.json { render :show, status: :created, location: @water_testing_service }
      else
        format.html { render :new }
        format.json { render json: @water_testing_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_testing_services/1
  # PATCH/PUT /water_testing_services/1.json
  def update
    respond_to do |format|
      if @water_testing_service.update(water_testing_service_params)
        format.html { redirect_to @water_testing_service, notice: 'Water testing service was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_testing_service }
      else
        format.html { render :edit }
        format.json { render json: @water_testing_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_testing_services/1
  # DELETE /water_testing_services/1.json
  def destroy
    @water_testing_service.destroy
    respond_to do |format|
      format.html { redirect_to water_testing_services_url, notice: 'Water testing service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_testing_service
      @water_testing_service = WaterTestingService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_testing_service_params
      params.require(:water_testing_service).permit(:wts_pic, :wts_tag)
    end
end

class MeteoParametersController < ApplicationController
  before_action :set_meteo_parameter, only: [:show, :edit, :update, :destroy]

  # GET /meteo_parameters
  # GET /meteo_parameters.json
  def index
    @meteo_parameters = MeteoParameter.all
    @irradiation = MeteoParameter.where(date_time: "2014-03-09 17:15:00")
    @ambient_temp = MeteoParameter.where(date_time: "2014-03-09 17:15:00")
    @panel_temp = MeteoParameter.where(date_time: "2014-03-09 17:15:00")
  end

  # GET /meteo_parameters/1
  # GET /meteo_parameters/1.json
  def show
  end

  # GET /meteo_parameters/new
  def new
    @meteo_parameter = MeteoParameter.new
  end

  # GET /meteo_parameters/1/edit
  def edit
  end

  # POST /meteo_parameters
  # POST /meteo_parameters.json
  def create
    @meteo_parameter = MeteoParameter.new(meteo_parameter_params)

    respond_to do |format|
      if @meteo_parameter.save
        format.html { redirect_to @meteo_parameter, notice: 'Meteo parameter was successfully created.' }
        format.json { render :show, status: :created, location: @meteo_parameter }
      else
        format.html { render :new }
        format.json { render json: @meteo_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meteo_parameters/1
  # PATCH/PUT /meteo_parameters/1.json
  def update
    respond_to do |format|
      if @meteo_parameter.update(meteo_parameter_params)
        format.html { redirect_to @meteo_parameter, notice: 'Meteo parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @meteo_parameter }
      else
        format.html { render :edit }
        format.json { render json: @meteo_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meteo_parameters/1
  # DELETE /meteo_parameters/1.json
  def destroy
    @meteo_parameter.destroy
    respond_to do |format|
      format.html { redirect_to meteo_parameters_url, notice: 'Meteo parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meteo_parameter
      @meteo_parameter = MeteoParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meteo_parameter_params
      params[:meteo_parameter]
    end
end

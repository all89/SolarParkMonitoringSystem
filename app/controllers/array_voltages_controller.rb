class ArrayVoltagesController < ApplicationController
  before_action :set_array_voltage, only: [:show, :edit, :update, :destroy]

  # GET /array_voltages
  # GET /array_voltages.json
  def index
    @array_voltages = ArrayVoltage.all
  end

  # GET /array_voltages/1
  # GET /array_voltages/1.json
  def show
  end

  # GET /array_voltages/new
  def new
    @array_voltage = ArrayVoltage.new
  end

  # GET /array_voltages/1/edit
  def edit
  end

  # POST /array_voltages
  # POST /array_voltages.json
  def create
    @array_voltage = ArrayVoltage.new(array_voltage_params)

    respond_to do |format|
      if @array_voltage.save
        format.html { redirect_to @array_voltage, notice: 'Array voltage was successfully created.' }
        format.json { render :show, status: :created, location: @array_voltage }
      else
        format.html { render :new }
        format.json { render json: @array_voltage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /array_voltages/1
  # PATCH/PUT /array_voltages/1.json
  def update
    respond_to do |format|
      if @array_voltage.update(array_voltage_params)
        format.html { redirect_to @array_voltage, notice: 'Array voltage was successfully updated.' }
        format.json { render :show, status: :ok, location: @array_voltage }
      else
        format.html { render :edit }
        format.json { render json: @array_voltage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /array_voltages/1
  # DELETE /array_voltages/1.json
  def destroy
    @array_voltage.destroy
    respond_to do |format|
      format.html { redirect_to array_voltages_url, notice: 'Array voltage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_array_voltage
      @array_voltage = ArrayVoltage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def array_voltage_params
      params[:array_voltage]
    end
end

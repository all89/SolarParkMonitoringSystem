class MvVoltagesController < ApplicationController
  before_action :set_mv_voltage, only: [:show, :edit, :update, :destroy]

  # GET /mv_voltages
  # GET /mv_voltages.json
  def index
    @mv_voltages = MvVoltage.all
  end

  # GET /mv_voltages/1
  # GET /mv_voltages/1.json
  def show
  end

  # GET /mv_voltages/new
  def new
    @mv_voltage = MvVoltage.new
  end

  # GET /mv_voltages/1/edit
  def edit
  end

  # POST /mv_voltages
  # POST /mv_voltages.json
  def create
    @mv_voltage = MvVoltage.new(mv_voltage_params)

    respond_to do |format|
      if @mv_voltage.save
        format.html { redirect_to @mv_voltage, notice: 'Mv voltage was successfully created.' }
        format.json { render :show, status: :created, location: @mv_voltage }
      else
        format.html { render :new }
        format.json { render json: @mv_voltage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mv_voltages/1
  # PATCH/PUT /mv_voltages/1.json
  def update
    respond_to do |format|
      if @mv_voltage.update(mv_voltage_params)
        format.html { redirect_to @mv_voltage, notice: 'Mv voltage was successfully updated.' }
        format.json { render :show, status: :ok, location: @mv_voltage }
      else
        format.html { render :edit }
        format.json { render json: @mv_voltage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mv_voltages/1
  # DELETE /mv_voltages/1.json
  def destroy
    @mv_voltage.destroy
    respond_to do |format|
      format.html { redirect_to mv_voltages_url, notice: 'Mv voltage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mv_voltage
      @mv_voltage = MvVoltage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mv_voltage_params
      params[:mv_voltage]
    end
end

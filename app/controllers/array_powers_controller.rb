class ArrayPowersController < ApplicationController
  before_action :set_array_power, only: [:show, :edit, :update, :destroy]

  # GET /array_powers
  # GET /array_powers.json
  def index
    @array_powers = ArrayPower.all
    respond_to do |format|
      format.html
      format.csv { send_data @array_powers.to_csv }
      format.xls { send_data @array_powers.to_csv(col_sep: "\t") }
    end
  end

  def array11
    @day3_graph_power = ArrayPower.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array11)
    @day4_graph_power = ArrayPower.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array11)
    @day5_graph_power = ArrayPower.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array11)
    @day6_graph_power = ArrayPower.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array11)
    @day7_graph_power = ArrayPower.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array11)
    @day8_graph_power = ArrayPower.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array11)
    @day9_graph_power = ArrayPower.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array11)
    @weekly_graph_power = ArrayPower.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array11)

    @day3_graph_current = ArrayCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array11)
    @day4_graph_current = ArrayCurrent.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array11)
    @day5_graph_current = ArrayCurrent.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array11)
    @day6_graph_current = ArrayCurrent.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array11)
    @day7_graph_current = ArrayCurrent.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array11)
    @day8_graph_current = ArrayCurrent.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array11)
    @day9_graph_current = ArrayCurrent.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array11)
    @weekly_graph_current = ArrayCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array11)

    @day3_graph_voltage = ArrayVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array11)
    @day4_graph_voltage = ArrayVoltage.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array11)
    @day5_graph_voltage = ArrayVoltage.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array11)
    @day6_graph_voltage = ArrayVoltage.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array11)
    @day7_graph_voltage = ArrayVoltage.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array11)
    @day8_graph_voltage = ArrayVoltage.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array11)
    @day9_graph_voltage = ArrayVoltage.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array11)
    @weekly_graph_voltage = ArrayVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array11)
  end

  def array12
    @day3_graph_power = ArrayPower.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array12)
    @day4_graph_power = ArrayPower.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array12)
    @day5_graph_power = ArrayPower.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array12)
    @day6_graph_power = ArrayPower.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array12)
    @day7_graph_power = ArrayPower.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array12)
    @day8_graph_power = ArrayPower.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array12)
    @day9_graph_power = ArrayPower.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array12)
    @weekly_graph_power = ArrayPower.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array12)

    @day3_graph_current = ArrayCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array12)
    @day4_graph_current = ArrayCurrent.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array12)
    @day5_graph_current = ArrayCurrent.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array12)
    @day6_graph_current = ArrayCurrent.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array12)
    @day7_graph_current = ArrayCurrent.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array12)
    @day8_graph_current = ArrayCurrent.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array12)
    @day9_graph_current = ArrayCurrent.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array12)
    @weekly_graph_current = ArrayCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array12)

    @day3_graph_voltage = ArrayVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array12)
    @day4_graph_voltage = ArrayVoltage.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array12)
    @day5_graph_voltage = ArrayVoltage.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array12)
    @day6_graph_voltage = ArrayVoltage.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array12)
    @day7_graph_voltage = ArrayVoltage.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array12)
    @day8_graph_voltage = ArrayVoltage.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array12)
    @day9_graph_voltage = ArrayVoltage.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array12)
    @weekly_graph_voltage = ArrayVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array12)
  end

  def array13
    @day3_graph_power = ArrayPower.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array13)
    @day4_graph_power = ArrayPower.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array13)
    @day5_graph_power = ArrayPower.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array13)
    @day6_graph_power = ArrayPower.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array13)
    @day7_graph_power = ArrayPower.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array13)
    @day8_graph_power = ArrayPower.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array13)
    @day9_graph_power = ArrayPower.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array13)
    @weekly_graph_power = ArrayPower.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array13)

    @day3_graph_current = ArrayCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array13)
    @day4_graph_current = ArrayCurrent.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array13)
    @day5_graph_current = ArrayCurrent.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array13)
    @day6_graph_current = ArrayCurrent.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array13)
    @day7_graph_current = ArrayCurrent.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array13)
    @day8_graph_current = ArrayCurrent.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array13)
    @day9_graph_current = ArrayCurrent.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array13)
    @weekly_graph_current = ArrayCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array13)

    @day3_graph_voltage = ArrayVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:array13)
    @day4_graph_voltage = ArrayVoltage.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:array13)
    @day5_graph_voltage = ArrayVoltage.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:array13)
    @day6_graph_voltage = ArrayVoltage.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:array13)
    @day7_graph_voltage = ArrayVoltage.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:array13)
    @day8_graph_voltage = ArrayVoltage.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:array13)
    @day9_graph_voltage = ArrayVoltage.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array13)
    @weekly_graph_voltage = ArrayVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:array13)
  end
  # GET /array_powers/1
  # GET /array_powers/1.json
  def show
  end

  # GET /array_powers/new
  def new
    @array_power = ArrayPower.new
  end

  # GET /array_powers/1/edit
  def edit
  end

  # POST /array_powers
  # POST /array_powers.json
  def create
    @array_power = ArrayPower.new(array_power_params)

    respond_to do |format|
      if @array_power.save
        format.html { redirect_to @array_power, notice: 'Array power was successfully created.' }
        format.json { render :show, status: :created, location: @array_power }
      else
        format.html { render :new }
        format.json { render json: @array_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /array_powers/1
  # PATCH/PUT /array_powers/1.json
  def update
    respond_to do |format|
      if @array_power.update(array_power_params)
        format.html { redirect_to @array_power, notice: 'Array power was successfully updated.' }
        format.json { render :show, status: :ok, location: @array_power }
      else
        format.html { render :edit }
        format.json { render json: @array_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /array_powers/1
  # DELETE /array_powers/1.json
  def destroy
    @array_power.destroy
    respond_to do |format|
      format.html { redirect_to array_powers_url, notice: 'Array power was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_array_power
      @array_power = ArrayPower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def array_power_params
      params[:array_power]
    end
end

class MvCurrentsController < ApplicationController
  before_action :set_mv_current, only: [:show, :edit, :update, :destroy]

  # GET /mv_currents
  # GET /mv_currents.json
  def index
    @mv_currents = MvCurrent.all

    respond_to do |format|
      format.html
      format.csv { send_data @mv_currents.to_csv }
      format.xls { send_data @mv_currents.to_csv(col_sep: "\t") }
    end
  end

  def mv1
    @day3_graph_current = MvCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:mv1)
    @day4_graph_current = MvCurrent.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:mv1)
    @day5_graph_current = MvCurrent.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:mv1)
    @day6_graph_current = MvCurrent.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:mv1)
    @day7_graph_current = MvCurrent.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:mv1)
    @day8_graph_current = MvCurrent.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:mv1)
    @day9_graph_current = MvCurrent.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv1)
    @weekly_graph_current = MvCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv1)

    @day3_graph_voltage = MvVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:mv1)
    @day4_graph_voltage = MvVoltage.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:mv1)
    @day5_graph_voltage = MvVoltage.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:mv1)
    @day6_graph_voltage = MvVoltage.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:mv1)
    @day7_graph_voltage = MvVoltage.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:mv1)
    @day8_graph_voltage = MvVoltage.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:mv1)
    @day9_graph_voltage = MvVoltage.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv1)
    @weekly_graph_voltage = MvVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv1)
  end

  def mv2
    @day3_graph_current = MvCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:mv2)
    @day4_graph_current = MvCurrent.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:mv2)
    @day5_graph_current = MvCurrent.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:mv2)
    @day6_graph_current = MvCurrent.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:mv2)
    @day7_graph_current = MvCurrent.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:mv2)
    @day8_graph_current = MvCurrent.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:mv2)
    @day9_graph_current = MvCurrent.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv2)
    @weekly_graph_current = MvCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv2)

    @day3_graph_voltage = MvVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:mv2)
    @day4_graph_voltage = MvVoltage.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:mv2)
    @day5_graph_voltage = MvVoltage.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:mv2)
    @day6_graph_voltage = MvVoltage.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:mv2)
    @day7_graph_voltage = MvVoltage.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:mv2)
    @day8_graph_voltage = MvVoltage.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:mv2)
    @day9_graph_voltage = MvVoltage.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv2)
    @weekly_graph_voltage = MvVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv2)
  end

  def mv3
    @day3_graph_current = MvCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:mv3)
    @day4_graph_current = MvCurrent.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:mv3)
    @day5_graph_current = MvCurrent.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:mv3)
    @day6_graph_current = MvCurrent.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:mv3)
    @day7_graph_current = MvCurrent.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:mv3)
    @day8_graph_current = MvCurrent.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:mv3)
    @day9_graph_current = MvCurrent.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv3)
    @weekly_graph_current = MvCurrent.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv3)

    @day3_graph_voltage = MvVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:mv3)
    @day4_graph_voltage = MvVoltage.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:mv3)
    @day5_graph_voltage = MvVoltage.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:mv3)
    @day6_graph_voltage = MvVoltage.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:mv3)
    @day7_graph_voltage = MvVoltage.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:mv3)
    @day8_graph_voltage = MvVoltage.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:mv3)
    @day9_graph_voltage = MvVoltage.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv3)
    @weekly_graph_voltage = MvVoltage.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:mv3)
  end

  # GET /mv_currents/1
  # GET /mv_currents/1.json
  def show
  end

  # GET /mv_currents/new
  def new
    @mv_current = MvCurrent.new
  end

  # GET /mv_currents/1/edit
  def edit
  end

  # POST /mv_currents
  # POST /mv_currents.json
  def create
    @mv_current = MvCurrent.new(mv_current_params)

    respond_to do |format|
      if @mv_current.save
        format.html { redirect_to @mv_current, notice: 'Mv current was successfully created.' }
        format.json { render :show, status: :created, location: @mv_current }
      else
        format.html { render :new }
        format.json { render json: @mv_current.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mv_currents/1
  # PATCH/PUT /mv_currents/1.json
  def update
    respond_to do |format|
      if @mv_current.update(mv_current_params)
        format.html { redirect_to @mv_current, notice: 'Mv current was successfully updated.' }
        format.json { render :show, status: :ok, location: @mv_current }
      else
        format.html { render :edit }
        format.json { render json: @mv_current.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mv_currents/1
  # DELETE /mv_currents/1.json
  def destroy
    @mv_current.destroy
    respond_to do |format|
      format.html { redirect_to mv_currents_url, notice: 'Mv current was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mv_current
      @mv_current = MvCurrent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mv_current_params
      params[:mv_current]
    end
end

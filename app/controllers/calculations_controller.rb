class CalculationsController < ApplicationController
  before_action :set_calculation, only: [:show, :edit, :update, :destroy]

  # GET /calculations
  # GET /calculations.json
  def index
    @calculations = Calculation.all

    @day3_graph = Calculation.where(date_time: "3/3/2014 00:15".."3/3/2014 23:45").group(:date_time).sum(:daily_energy)
    @day4_graph = Calculation.where(date_time: "4/3/2014 00:15".."4/3/2014 23:45").group(:date_time).sum(:daily_energy)
    @day5_graph = Calculation.where(date_time: "5/3/2014 00:15".."5/3/2014 23:45").group(:date_time).sum(:daily_energy)
    @day6_graph = Calculation.where(date_time: "6/3/2014 00:15".."6/3/2014 23:45").group(:date_time).sum(:daily_energy)
    @day7_graph = Calculation.where(date_time: "7/3/2014 00:15".."7/3/2014 23:45").group(:date_time).sum(:daily_energy)
    @day8_graph = Calculation.where(date_time: "8/3/2014 00:15".."8/3/2014 23:45").group(:date_time).sum(:daily_energy)
    @day9_graph = Calculation.where(date_time: "9/3/2014 00:15".."9/3/2014 23:45").group(:date_time).sum(:daily_energy)
    @weekly_graph = Calculation.where(date_time: "3/3/2014 00:15".."9/3/2014 23:45").group(:date_time).sum(:daily_energy)

    respond_to do |format|
      format.html
      format.csv { send_data @calculations.to_csv }
      format.xls { send_data @calculations.to_csv(col_sep: "\t") }
    end
  end

  def pr

    @day3_graph = Calculation.where(date_time: "3/3/2014 00:15".."3/3/2014 23:45").group(:date_time).sum(:pr_ratio)
    @day4_graph = Calculation.where(date_time: "4/3/2014 00:15".."4/3/2014 23:45").group(:date_time).sum(:pr_ratio)
    @day5_graph = Calculation.where(date_time: "5/3/2014 00:15".."5/3/2014 23:45").group(:date_time).sum(:pr_ratio)
    @day6_graph = Calculation.where(date_time: "6/3/2014 00:15".."6/3/2014 23:45").group(:date_time).sum(:pr_ratio)
    @day7_graph = Calculation.where(date_time: "7/3/2014 00:15".."7/3/2014 23:45").group(:date_time).sum(:pr_ratio)
    @day8_graph = Calculation.where(date_time: "8/3/2014 00:15".."8/3/2014 23:45").group(:date_time).sum(:pr_ratio)
    @day9_graph = Calculation.where(date_time: "9/3/2014 00:15".."9/3/2014 23:45").group(:date_time).sum(:pr_ratio)
    @weekly_graph = Calculation.where(date_time: "3/3/2014 00:15".."9/3/2014 23:45").group(:date_time).sum(:pr_ratio)

  end

  # GET /calculations/1
  # GET /calculations/1.json
  def show
  end

  # GET /calculations/new
  def new
    @calculation = Calculation.new
  end

  # GET /calculations/1/edit
  def edit
  end

  # POST /calculations
  # POST /calculations.json
  def create
    @calculation = Calculation.new(calculation_params)

    respond_to do |format|
      if @calculation.save
        format.html { redirect_to @calculation, notice: 'Calculation was successfully created.' }
        format.json { render :show, status: :created, location: @calculation }
      else
        format.html { render :new }
        format.json { render json: @calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculations/1
  # PATCH/PUT /calculations/1.json
  def update
    respond_to do |format|
      if @calculation.update(calculation_params)
        format.html { redirect_to @calculation, notice: 'Calculation was successfully updated.' }
        format.json { render :show, status: :ok, location: @calculation }
      else
        format.html { render :edit }
        format.json { render json: @calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculations/1
  # DELETE /calculations/1.json
  def destroy
    @calculation.destroy
    respond_to do |format|
      format.html { redirect_to calculations_url, notice: 'Calculation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_calculation
    @calculation = Calculation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def calculation_params
    params[:calculation]
  end
end

class LvActivepowersController < ApplicationController
  before_action :set_lv_activepower, only: [:show, :edit, :update, :destroy]

  # GET /lv_activepowers
  # GET /lv_activepowers.json
  def index
    @lv_activepowers = LvActivepower.all

    @day3_graph = LvActivepower.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:value)
    @day4_graph = LvActivepower.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:value)
    @day5_graph = LvActivepower.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:value)
    @day6_graph = LvActivepower.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:value)
    @day7_graph = LvActivepower.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:value)
    @day8_graph = LvActivepower.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:value)
    @day9_graph = LvActivepower.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:value)
    @weekly_graph = LvActivepower.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:value)

    respond_to do |format|
      format.html
      format.csv { send_data @lv_activepowers.to_csv }
      format.xls { send_data @lv_activepowers.to_csv(col_sep: "\t") }
    end
  end

  # GET /lv_activepowers/1
  # GET /lv_activepowers/1.json
  def show
  end

  # GET /lv_activepowers/new
  def new
    @lv_activepower = LvActivepower.new
  end

  # GET /lv_activepowers/1/edit
  def edit
  end

  # POST /lv_activepowers
  # POST /lv_activepowers.json
  def create
    @lv_activepower = LvActivepower.new(lv_activepower_params)

    respond_to do |format|
      if @lv_activepower.save
        format.html { redirect_to @lv_activepower, notice: 'Lv activepower was successfully created.' }
        format.json { render :show, status: :created, location: @lv_activepower }
      else
        format.html { render :new }
        format.json { render json: @lv_activepower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lv_activepowers/1
  # PATCH/PUT /lv_activepowers/1.json
  def update
    respond_to do |format|
      if @lv_activepower.update(lv_activepower_params)
        format.html { redirect_to @lv_activepower, notice: 'Lv activepower was successfully updated.' }
        format.json { render :show, status: :ok, location: @lv_activepower }
      else
        format.html { render :edit }
        format.json { render json: @lv_activepower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lv_activepowers/1
  # DELETE /lv_activepowers/1.json
  def destroy
    @lv_activepower.destroy
    respond_to do |format|
      format.html { redirect_to lv_activepowers_url, notice: 'Lv activepower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lv_activepower
      @lv_activepower = LvActivepower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lv_activepower_params
      params[:lv_activepower]
    end
end

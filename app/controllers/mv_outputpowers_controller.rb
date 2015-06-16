class MvOutputpowersController < ApplicationController
  before_action :set_mv_outputpower, only: [:show, :edit, :update, :destroy]

  # GET /mv_outputpowers
  # GET /mv_outputpowers.json
  def index
    @mv_outputpowers = MvOutputpower.all

    @day3_graph = MvOutputpower.where(date_time: "2014-03-03 00:00:00".."2014-03-03 23:45:00").group(:date_time).sum(:value)
    @day4_graph = MvOutputpower.where(date_time: "2014-03-04 00:00:00".."2014-03-04 23:45:00").group(:date_time).sum(:value)
    @day5_graph = MvOutputpower.where(date_time: "2014-03-05 00:00:00".."2014-03-05 23:45:00").group(:date_time).sum(:value)
    @day6_graph = MvOutputpower.where(date_time: "2014-03-06 00:00:00".."2014-03-06 23:45:00").group(:date_time).sum(:value)
    @day7_graph = MvOutputpower.where(date_time: "2014-03-07 00:00:00".."2014-03-07 23:45:00").group(:date_time).sum(:value)
    @day8_graph = MvOutputpower.where(date_time: "2014-03-08 00:00:00".."2014-03-08 23:45:00").group(:date_time).sum(:value)
    @day9_graph = MvOutputpower.where(date_time: "2014-03-09 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:value)
    @weekly_graph = MvOutputpower.where(date_time: "2014-03-03 00:00:00".."2014-03-09 23:45:00").group(:date_time).sum(:value)

    respond_to do |format|
      format.html
      format.csv { send_data @mv_outputpowers.to_csv }
      format.xls { send_data @mv_outputpowers.to_csv(col_sep: "\t") }
    end
  end

  # GET /mv_outputpowers/1
  # GET /mv_outputpowers/1.json
  def show
  end

  # GET /mv_outputpowers/new
  def new
    @mv_outputpower = MvOutputpower.new
  end

  # GET /mv_outputpowers/1/edit
  def edit
  end

  # POST /mv_outputpowers
  # POST /mv_outputpowers.json
  def create
    @mv_outputpower = MvOutputpower.new(mv_outputpower_params)

    respond_to do |format|
      if @mv_outputpower.save
        format.html { redirect_to @mv_outputpower, notice: 'Mv outputpower was successfully created.' }
        format.json { render :show, status: :created, location: @mv_outputpower }
      else
        format.html { render :new }
        format.json { render json: @mv_outputpower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mv_outputpowers/1
  # PATCH/PUT /mv_outputpowers/1.json
  def update
    respond_to do |format|
      if @mv_outputpower.update(mv_outputpower_params)
        format.html { redirect_to @mv_outputpower, notice: 'Mv outputpower was successfully updated.' }
        format.json { render :show, status: :ok, location: @mv_outputpower }
      else
        format.html { render :edit }
        format.json { render json: @mv_outputpower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mv_outputpowers/1
  # DELETE /mv_outputpowers/1.json
  def destroy
    @mv_outputpower.destroy
    respond_to do |format|
      format.html { redirect_to mv_outputpowers_url, notice: 'Mv outputpower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mv_outputpower
      @mv_outputpower = MvOutputpower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mv_outputpower_params
      params[:mv_outputpower]
    end
end

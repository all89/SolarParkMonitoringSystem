class ParkStructuresController < ApplicationController
  before_action :set_park_structure, only: [:show, :edit, :update, :destroy]

  # GET /park_structures
  # GET /park_structures.json
  def index
    @park_structures = ParkStructure.all
  end

  def allparks
    @lv = LvActivepower.where(date_time: "2014-03-09 17:15:00")
    @panel_temp = MeteoParameter.where(date_time: "2014-03-09 17:15:00")
  end
  # GET /park_structures/1
  # GET /park_structures/1.json
  def show
  end

  # GET /park_structures/new
  def new
    @park_structure = ParkStructure.new
  end

  # GET /park_structures/1/edit
  def edit
  end

  # POST /park_structures
  # POST /park_structures.json
  def create
    @park_structure = ParkStructure.new(park_structure_params)

    respond_to do |format|
      if @park_structure.save
        format.html { redirect_to @park_structure, notice: 'Park structure was successfully created.' }
        format.json { render :show, status: :created, location: @park_structure }
      else
        format.html { render :new }
        format.json { render json: @park_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /park_structures/1
  # PATCH/PUT /park_structures/1.json
  def update
    respond_to do |format|
      if @park_structure.update(park_structure_params)
        format.html { redirect_to @park_structure, notice: 'Park structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @park_structure }
      else
        format.html { render :edit }
        format.json { render json: @park_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /park_structures/1
  # DELETE /park_structures/1.json
  def destroy
    @park_structure.destroy
    respond_to do |format|
      format.html { redirect_to park_structures_url, notice: 'Park structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park_structure
      @park_structure = ParkStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def park_structure_params
      params[:park_structure]
    end
end

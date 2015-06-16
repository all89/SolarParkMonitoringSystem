class ArrayCurrentsController < ApplicationController
  before_action :set_array_current, only: [:show, :edit, :update, :destroy]

  # GET /array_currents
  # GET /array_currents.json
  def index
    @array_currents = ArrayCurrent.all
  end

  # GET /array_currents/1
  # GET /array_currents/1.json
  def show
  end

  # GET /array_currents/new
  def new
    @array_current = ArrayCurrent.new
  end

  # GET /array_currents/1/edit
  def edit
  end

  # POST /array_currents
  # POST /array_currents.json
  def create
    @array_current = ArrayCurrent.new(array_current_params)

    respond_to do |format|
      if @array_current.save
        format.html { redirect_to @array_current, notice: 'Array current was successfully created.' }
        format.json { render :show, status: :created, location: @array_current }
      else
        format.html { render :new }
        format.json { render json: @array_current.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /array_currents/1
  # PATCH/PUT /array_currents/1.json
  def update
    respond_to do |format|
      if @array_current.update(array_current_params)
        format.html { redirect_to @array_current, notice: 'Array current was successfully updated.' }
        format.json { render :show, status: :ok, location: @array_current }
      else
        format.html { render :edit }
        format.json { render json: @array_current.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /array_currents/1
  # DELETE /array_currents/1.json
  def destroy
    @array_current.destroy
    respond_to do |format|
      format.html { redirect_to array_currents_url, notice: 'Array current was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_array_current
      @array_current = ArrayCurrent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def array_current_params
      params[:array_current]
    end
end

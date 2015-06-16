class GeneralInfosController < ApplicationController


  # GET /general_info
  # GET /general_info.json
  def index
    @general_infos = GeneralInfo.all
  end

  # GET /general_info/1
  # GET /general_info/1.json
  def show
    @general_info = GeneralInfo.find params[:id]
  end

  # GET /general_info/new
  def new
    @general_info = GeneralInfo.new
  end

  # GET /general_info/1/edit
  def edit
    @general_info=GeneralInfo.find (params[:id])
  end

  # POST /general_info
  # POST /general_info.json
  def create
    @general_info = GeneralInfo.new (params[:general_info])

    respond_to do |format|
      if @general_info.save
        format.html { redirect_to @general_info, notice: 'General info was successfully created.' }
        format.json { render :show, status: :created, location: @general_info }
      else
        format.html { render :new }
        format.json { render json: @general_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_info/1
  # PATCH/PUT /general_info/1.json
  def update
    @general_info = GeneralInfo.find params[:id]
    if @general_info.update (general_info_params)
      redirect_to general_infos_path
    else render :action => :edit
    end
  end



  # DELETE /general_info/1
  # DELETE /general_info/1.json
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_general_info
    @general_info = GeneralInfo.find(params[:id])
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def general_info_params
    params.require(:general_info).permit(:name, :solar_panels, :nominal_power, :string_inverters, :nominal_inverter, :number_per_inverter, :price)
  end

end
class FactoryLightsController < ApplicationController
  before_action :set_factory_light, only: [:show, :edit, :update, :destroy]

  # GET /factory_lights
  # GET /factory_lights.json
  def index
    @factory_lights = FactoryLight.all
  end

  # GET /factory_lights/1
  # GET /factory_lights/1.json
  def show
  end

  # GET /factory_lights/new
  def new
    @factory_light = FactoryLight.new
  end

  # GET /factory_lights/1/edit
  def edit
  end

  # POST /factory_lights
  # POST /factory_lights.json
  def create
    @factory_light = FactoryLight.new(factory_light_params)

    respond_to do |format|
      if @factory_light.save
        format.html { redirect_to @factory_light, notice: 'Factory light was successfully created.' }
        format.json { render action: 'show', status: :created, location: @factory_light }
      else
        format.html { render action: 'new' }
        format.json { render json: @factory_light.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factory_lights/1
  # PATCH/PUT /factory_lights/1.json
  def update
    respond_to do |format|
      if @factory_light.update(factory_light_params)
        format.html { redirect_to @factory_light, notice: 'Factory light was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @factory_light.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factory_lights/1
  # DELETE /factory_lights/1.json
  def destroy
    @factory_light.destroy
    respond_to do |format|
      format.html { redirect_to factory_lights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factory_light
      @factory_light = FactoryLight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factory_light_params
      params.require(:factory_light).permit(:brend, :regin, :factor, :minimum_order, :delivery_time, :table_specification)
    end
end

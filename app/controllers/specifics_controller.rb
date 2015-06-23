class SpecificsController < ApplicationController
  before_action :set_specific, only: [:show, :edit, :update, :destroy]
  before_action :set_project_find
  # GET /specifics
  # GET /specifics.json
  def index
    @specifics = @project.specifics.all
  end

  # GET /specifics/1
  # GET /specifics/1.json
  def show
    
  end

  # GET /specifics/new
  def new
    @specific = Specific.new
  end

  # GET /specifics/1/edit
  def edit
    
  end

  # POST /specifics
  # POST /specifics.json
  def create
    @specific = @project.specifics.new(specific_params)

    respond_to do |format|
      if @specific.save
        format.html { redirect_to [@project, @specific], notice: 'Specific was successfully created.' }
        format.json { render action: 'show', status: :created, location: @specific }
      else
        format.html { render action: 'new' }
        format.json { render json: @specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specifics/1
  # PATCH/PUT /specifics/1.json
  def update
    respond_to do |format|
      if @specific.update(specific_params)
        format.html { redirect_to @project, notice: 'Specific was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specifics/1
  # DELETE /specifics/1.json
  def destroy
    @specific.destroy
    respond_to do |format|
      format.html { redirect_to project_specifics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific
      @specific = Specific.find(params[:id])
    end
    def set_project_find
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_params
      params.require(:specific).permit(:name, :project_id)
    end
end

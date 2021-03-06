class TableSpecificsController < ApplicationController
  before_action :set_table_specific, only: [:show, :edit, :update, :destroy]
  before_action :set_project_specific_find

  # GET /table_specifics
  # GET /table_specifics.json
  def index
    @table_specifics = TableSpecific.all
    # @table_specifics = @project.specific.table_specifics.all
  end

  # GET /table_specifics/1
  # GET /table_specifics/1.json
  def show
   
  end

  # GET /table_specifics/new
  def new
    @table_specific = TableSpecific.new
  end

  # GET /table_specifics/1/edit
  def edit
  end

  # POST /table_specifics
  # POST /table_specifics.json
  def create

    @table_specific = @specific.table_specifics.create(table_specific_params)

    respond_to do |format|
      if @table_specific.save
        if params[:images] && !params[:name]
          #===== The magic is here ;)
          params[:images].each { |image|
          @project.containers.create(image: image, name: @table_specific)
        }
      end        
        format.html { redirect_to new_project_specific_table_specific_path(@project, @specific, @table_specifics), notice: 'Table specific was successfully created.' }
        format.json { render action: 'show', status: :created, location: @table_specific }
      else
        format.html { render action: 'new' }
        format.json { render json: @table_specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_specifics/1
  # PATCH/PUT /table_specifics/1.json
  def update
    respond_to do |format|
      if @table_specific.update(table_specific_params)
        format.html { redirect_to @table_specific, notice: 'Table specific was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @table_specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_specifics/1
  # DELETE /table_specifics/1.json
  def destroy
    @table_specific.destroy
    respond_to do |format|
      format.html { redirect_to table_specifics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_specific
      @table_specific = TableSpecific.find(params[:id])
    end

    def set_project_specific_find      
      @project = Project.find(params[:project_id])
      @specific = Specific.find(params[:specific_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_specific_params
      params.require(:table_specific).permit(:factory, :aticle, :type_furniture, :finishing, :finishing_for_client, :size, :unit_price, :percent_discount, :unit_price_netto, :summ_netto, :unit_v, :summ_v, :factor, :unit_price, :number_of, :summ, :specific_id)
    end
end

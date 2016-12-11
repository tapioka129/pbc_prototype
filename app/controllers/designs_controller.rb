class DesignsController < ApplicationController
  before_action :set_design, only: [:show, :edit, :update, :destroy]

  # GET /designs
  # GET /designs.json
  def index
    @designs = Design.all
  end

  # GET /designs/1
  # GET /designs/1.json
  def show
    @design  = Design.find(params[:id])
    @records = @design.records
    @users = @design.users
  end

  # GET /designs/new
  def new
    @design = Design.new
    @record = @design.records.build 
  end

  # GET /designs/1/edit
  def edit
    @record = @design.records.first
  end

  # POST /designs
  # POST /designs.json
  def create
    @design = Design.new(design_params)
    
    params["design"]["user_ids"].each do |user_id|
      DesignUser.create(user_id: user_id, design: @design) unless user_id.blank?
    end
    
    respond_to do |format|
      if @design.save
        format.html { redirect_to @design, notice: 'Design was successfully created.' }
        format.json { render :show, status: :created, location: @design }
      else
        format.html { render :new }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designs/1
  # PATCH/PUT /designs/1.json
  def update
    respond_to do |format|
      if @design.update(design_params)
        format.html { redirect_to @design, notice: 'Design was successfully updated.' }
        format.json { render :show, status: :ok, location: @design }
      else
        format.html { render :edit }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designs/1
  # DELETE /designs/1.json
  def destroy
    @design.destroy
    respond_to do |format|
      format.html { redirect_to designs_url, notice: 'Design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design
      @design = Design.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_params
      params.require(:design).permit(:date, :summary, :prototype_id, records_attributes: [:id, :comment, :image, :_destroy])
    end
end

class DesignsUsersController < ApplicationController
  before_action :set_designs_user, only: [:show, :edit, :update, :destroy]

  # GET /designs_users
  # GET /designs_users.json
  def index
    @designs_users = DesignsUser.all
  end

  # GET /designs_users/1
  # GET /designs_users/1.json
  def show
  end

  # GET /designs_users/new
  def new
    @designs_user = DesignsUser.new
  end

  # GET /designs_users/1/edit
  def edit
  end

  # POST /designs_users
  # POST /designs_users.json
  def create
    @designs_user = DesignsUser.new(designs_user_params)

    respond_to do |format|
      if @designs_user.save
        format.html { redirect_to @designs_user, notice: 'Designs user was successfully created.' }
        format.json { render :show, status: :created, location: @designs_user }
      else
        format.html { render :new }
        format.json { render json: @designs_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designs_users/1
  # PATCH/PUT /designs_users/1.json
  def update
    respond_to do |format|
      if @designs_user.update(designs_user_params)
        format.html { redirect_to @designs_user, notice: 'Designs user was successfully updated.' }
        format.json { render :show, status: :ok, location: @designs_user }
      else
        format.html { render :edit }
        format.json { render json: @designs_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designs_users/1
  # DELETE /designs_users/1.json
  def destroy
    @designs_user.destroy
    respond_to do |format|
      format.html { redirect_to designs_users_url, notice: 'Designs user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designs_user
      @designs_user = DesignsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designs_user_params
      params.require(:designs_user).permit(:design_id, :user_id)
    end
end

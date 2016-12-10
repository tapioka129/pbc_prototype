class ExperimentUsersController < ApplicationController
  before_action :set_experiment_user, only: [:show, :edit, :update, :destroy]
  has_many :experiment
  has_many :user

  # GET /experiment_users
  # GET /experiment_users.json
  def index
    @experiment_users = ExperimentUser.all
  end

  # GET /experiment_users/1
  # GET /experiment_users/1.json
  def show
  end

  # GET /experiment_users/new
  def new
    @experiment_user = ExperimentUser.new
  end

  # GET /experiment_users/1/edit
  def edit
  end

  # POST /experiment_users
  # POST /experiment_users.json
  def create
    @experiment_user = ExperimentUser.new(experiment_user_params)

    respond_to do |format|
      if @experiment_user.save
        format.html { redirect_to @experiment_user, notice: 'Experiment user was successfully created.' }
        format.json { render :show, status: :created, location: @experiment_user }
      else
        format.html { render :new }
        format.json { render json: @experiment_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiment_users/1
  # PATCH/PUT /experiment_users/1.json
  def update
    respond_to do |format|
      if @experiment_user.update(experiment_user_params)
        format.html { redirect_to @experiment_user, notice: 'Experiment user was successfully updated.' }
        format.json { render :show, status: :ok, location: @experiment_user }
      else
        format.html { render :edit }
        format.json { render json: @experiment_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiment_users/1
  # DELETE /experiment_users/1.json
  def destroy
    @experiment_user.destroy
    respond_to do |format|
      format.html { redirect_to experiment_users_url, notice: 'Experiment user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experiment_user
      @experiment_user = ExperimentUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experiment_user_params
      params.require(:experiment_user).permit(:experiment_id, :user_id)
    end
end

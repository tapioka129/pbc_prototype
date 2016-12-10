require 'test_helper'

class ExperimentUsersControllerTest < ActionController::TestCase
  setup do
    @experiment_user = experiment_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiment_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experiment_user" do
    assert_difference('ExperimentUser.count') do
      post :create, experiment_user: { experiment_id: @experiment_user.experiment_id, user_id: @experiment_user.user_id }
    end

    assert_redirected_to experiment_user_path(assigns(:experiment_user))
  end

  test "should show experiment_user" do
    get :show, id: @experiment_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experiment_user
    assert_response :success
  end

  test "should update experiment_user" do
    patch :update, id: @experiment_user, experiment_user: { experiment_id: @experiment_user.experiment_id, user_id: @experiment_user.user_id }
    assert_redirected_to experiment_user_path(assigns(:experiment_user))
  end

  test "should destroy experiment_user" do
    assert_difference('ExperimentUser.count', -1) do
      delete :destroy, id: @experiment_user
    end

    assert_redirected_to experiment_users_path
  end
end

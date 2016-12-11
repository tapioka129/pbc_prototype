require 'test_helper'

class DesignsUsersControllerTest < ActionController::TestCase
  setup do
    @designs_user = designs_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designs_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designs_user" do
    assert_difference('DesignsUser.count') do
      post :create, designs_user: { design_id: @designs_user.design_id, user_id: @designs_user.user_id }
    end

    assert_redirected_to designs_user_path(assigns(:designs_user))
  end

  test "should show designs_user" do
    get :show, id: @designs_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designs_user
    assert_response :success
  end

  test "should update designs_user" do
    patch :update, id: @designs_user, designs_user: { design_id: @designs_user.design_id, user_id: @designs_user.user_id }
    assert_redirected_to designs_user_path(assigns(:designs_user))
  end

  test "should destroy designs_user" do
    assert_difference('DesignsUser.count', -1) do
      delete :destroy, id: @designs_user
    end

    assert_redirected_to designs_users_path
  end
end

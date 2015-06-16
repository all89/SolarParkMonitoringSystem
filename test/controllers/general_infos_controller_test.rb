require 'test_helper'

class GeneralInfosControllerTest < ActionController::TestCase
  setup do
    @general_info = general_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_info" do
    assert_difference('GeneralInfo.count') do
      post :create, general_info: {  }
    end

    assert_redirected_to general_info_path(assigns(:general_info))
  end

  test "should show general_info" do
    get :show, id: @general_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_info
    assert_response :success
  end

  test "should update general_info" do
    patch :update, id: @general_info, general_info: {  }
    assert_redirected_to general_info_path(assigns(:general_info))
  end

  test "should destroy general_info" do
    assert_difference('GeneralInfo.count', -1) do
      delete :destroy, id: @general_info
    end

    assert_redirected_to general_infos_path
  end
end

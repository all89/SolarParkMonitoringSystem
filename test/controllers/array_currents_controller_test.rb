require 'test_helper'

class ArrayCurrentsControllerTest < ActionController::TestCase
  setup do
    @array_current = array_currents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:array_currents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create array_current" do
    assert_difference('ArrayCurrent.count') do
      post :create, array_current: {  }
    end

    assert_redirected_to array_current_path(assigns(:array_current))
  end

  test "should show array_current" do
    get :show, id: @array_current
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @array_current
    assert_response :success
  end

  test "should update array_current" do
    patch :update, id: @array_current, array_current: {  }
    assert_redirected_to array_current_path(assigns(:array_current))
  end

  test "should destroy array_current" do
    assert_difference('ArrayCurrent.count', -1) do
      delete :destroy, id: @array_current
    end

    assert_redirected_to array_currents_path
  end
end

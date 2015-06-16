require 'test_helper'

class ArrayPowersControllerTest < ActionController::TestCase
  setup do
    @array_power = array_powers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:array_powers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create array_power" do
    assert_difference('ArrayPower.count') do
      post :create, array_power: {  }
    end

    assert_redirected_to array_power_path(assigns(:array_power))
  end

  test "should show array_power" do
    get :show, id: @array_power
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @array_power
    assert_response :success
  end

  test "should update array_power" do
    patch :update, id: @array_power, array_power: {  }
    assert_redirected_to array_power_path(assigns(:array_power))
  end

  test "should destroy array_power" do
    assert_difference('ArrayPower.count', -1) do
      delete :destroy, id: @array_power
    end

    assert_redirected_to array_powers_path
  end
end

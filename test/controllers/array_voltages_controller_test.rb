require 'test_helper'

class ArrayVoltagesControllerTest < ActionController::TestCase
  setup do
    @array_voltage = array_voltages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:array_voltages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create array_voltage" do
    assert_difference('ArrayVoltage.count') do
      post :create, array_voltage: {  }
    end

    assert_redirected_to array_voltage_path(assigns(:array_voltage))
  end

  test "should show array_voltage" do
    get :show, id: @array_voltage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @array_voltage
    assert_response :success
  end

  test "should update array_voltage" do
    patch :update, id: @array_voltage, array_voltage: {  }
    assert_redirected_to array_voltage_path(assigns(:array_voltage))
  end

  test "should destroy array_voltage" do
    assert_difference('ArrayVoltage.count', -1) do
      delete :destroy, id: @array_voltage
    end

    assert_redirected_to array_voltages_path
  end
end

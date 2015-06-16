require 'test_helper'

class MvVoltagesControllerTest < ActionController::TestCase
  setup do
    @mv_voltage = mv_voltages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mv_voltages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mv_voltage" do
    assert_difference('MvVoltage.count') do
      post :create, mv_voltage: {  }
    end

    assert_redirected_to mv_voltage_path(assigns(:mv_voltage))
  end

  test "should show mv_voltage" do
    get :show, id: @mv_voltage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mv_voltage
    assert_response :success
  end

  test "should update mv_voltage" do
    patch :update, id: @mv_voltage, mv_voltage: {  }
    assert_redirected_to mv_voltage_path(assigns(:mv_voltage))
  end

  test "should destroy mv_voltage" do
    assert_difference('MvVoltage.count', -1) do
      delete :destroy, id: @mv_voltage
    end

    assert_redirected_to mv_voltages_path
  end
end

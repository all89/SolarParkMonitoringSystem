require 'test_helper'

class MeteoParametersControllerTest < ActionController::TestCase
  setup do
    @meteo_parameter = meteo_parameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meteo_parameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meteo_parameter" do
    assert_difference('MeteoParameter.count') do
      post :create, meteo_parameter: {  }
    end

    assert_redirected_to meteo_parameter_path(assigns(:meteo_parameter))
  end

  test "should show meteo_parameter" do
    get :show, id: @meteo_parameter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meteo_parameter
    assert_response :success
  end

  test "should update meteo_parameter" do
    patch :update, id: @meteo_parameter, meteo_parameter: {  }
    assert_redirected_to meteo_parameter_path(assigns(:meteo_parameter))
  end

  test "should destroy meteo_parameter" do
    assert_difference('MeteoParameter.count', -1) do
      delete :destroy, id: @meteo_parameter
    end

    assert_redirected_to meteo_parameters_path
  end
end

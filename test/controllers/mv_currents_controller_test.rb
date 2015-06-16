require 'test_helper'

class MvCurrentsControllerTest < ActionController::TestCase
  setup do
    @mv_current = mv_currents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mv_currents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mv_current" do
    assert_difference('MvCurrent.count') do
      post :create, mv_current: {  }
    end

    assert_redirected_to mv_current_path(assigns(:mv_current))
  end

  test "should show mv_current" do
    get :show, id: @mv_current
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mv_current
    assert_response :success
  end

  test "should update mv_current" do
    patch :update, id: @mv_current, mv_current: {  }
    assert_redirected_to mv_current_path(assigns(:mv_current))
  end

  test "should destroy mv_current" do
    assert_difference('MvCurrent.count', -1) do
      delete :destroy, id: @mv_current
    end

    assert_redirected_to mv_currents_path
  end
end

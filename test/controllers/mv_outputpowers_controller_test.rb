require 'test_helper'

class MvOutputpowersControllerTest < ActionController::TestCase
  setup do
    @mv_outputpower = mv_outputpowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mv_outputpowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mv_outputpower" do
    assert_difference('MvOutputpower.count') do
      post :create, mv_outputpower: {  }
    end

    assert_redirected_to mv_outputpower_path(assigns(:mv_outputpower))
  end

  test "should show mv_outputpower" do
    get :show, id: @mv_outputpower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mv_outputpower
    assert_response :success
  end

  test "should update mv_outputpower" do
    patch :update, id: @mv_outputpower, mv_outputpower: {  }
    assert_redirected_to mv_outputpower_path(assigns(:mv_outputpower))
  end

  test "should destroy mv_outputpower" do
    assert_difference('MvOutputpower.count', -1) do
      delete :destroy, id: @mv_outputpower
    end

    assert_redirected_to mv_outputpowers_path
  end
end

require 'test_helper'

class LvActivepowersControllerTest < ActionController::TestCase
  setup do
    @lv_activepower = lv_activepowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lv_activepowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lv_activepower" do
    assert_difference('LvActivepower.count') do
      post :create, lv_activepower: {  }
    end

    assert_redirected_to lv_activepower_path(assigns(:lv_activepower))
  end

  test "should show lv_activepower" do
    get :show, id: @lv_activepower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lv_activepower
    assert_response :success
  end

  test "should update lv_activepower" do
    patch :update, id: @lv_activepower, lv_activepower: {  }
    assert_redirected_to lv_activepower_path(assigns(:lv_activepower))
  end

  test "should destroy lv_activepower" do
    assert_difference('LvActivepower.count', -1) do
      delete :destroy, id: @lv_activepower
    end

    assert_redirected_to lv_activepowers_path
  end
end

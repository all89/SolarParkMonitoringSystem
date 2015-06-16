require 'test_helper'

class ParkStructuresControllerTest < ActionController::TestCase
  setup do
    @park_structure = park_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:park_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create park_structure" do
    assert_difference('ParkStructure.count') do
      post :create, park_structure: {  }
    end

    assert_redirected_to park_structure_path(assigns(:park_structure))
  end

  test "should show park_structure" do
    get :show, id: @park_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @park_structure
    assert_response :success
  end

  test "should update park_structure" do
    patch :update, id: @park_structure, park_structure: {  }
    assert_redirected_to park_structure_path(assigns(:park_structure))
  end

  test "should destroy park_structure" do
    assert_difference('ParkStructure.count', -1) do
      delete :destroy, id: @park_structure
    end

    assert_redirected_to park_structures_path
  end
end

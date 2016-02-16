require 'test_helper'

class FloodPreventionsControllerTest < ActionController::TestCase
  setup do
    @flood_prevention = flood_preventions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flood_preventions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flood_prevention" do
    assert_difference('FloodPrevention.count') do
      post :create, flood_prevention: {  }
    end

    assert_redirected_to flood_prevention_path(assigns(:flood_prevention))
  end

  test "should show flood_prevention" do
    get :show, id: @flood_prevention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flood_prevention
    assert_response :success
  end

  test "should update flood_prevention" do
    patch :update, id: @flood_prevention, flood_prevention: {  }
    assert_redirected_to flood_prevention_path(assigns(:flood_prevention))
  end

  test "should destroy flood_prevention" do
    assert_difference('FloodPrevention.count', -1) do
      delete :destroy, id: @flood_prevention
    end

    assert_redirected_to flood_preventions_path
  end
end

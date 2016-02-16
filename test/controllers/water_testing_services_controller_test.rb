require 'test_helper'

class WaterTestingServicesControllerTest < ActionController::TestCase
  setup do
    @water_testing_service = water_testing_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:water_testing_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create water_testing_service" do
    assert_difference('WaterTestingService.count') do
      post :create, water_testing_service: {  }
    end

    assert_redirected_to water_testing_service_path(assigns(:water_testing_service))
  end

  test "should show water_testing_service" do
    get :show, id: @water_testing_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @water_testing_service
    assert_response :success
  end

  test "should update water_testing_service" do
    patch :update, id: @water_testing_service, water_testing_service: {  }
    assert_redirected_to water_testing_service_path(assigns(:water_testing_service))
  end

  test "should destroy water_testing_service" do
    assert_difference('WaterTestingService.count', -1) do
      delete :destroy, id: @water_testing_service
    end

    assert_redirected_to water_testing_services_path
  end
end

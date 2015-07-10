require 'test_helper'

class FactoryLightsControllerTest < ActionController::TestCase
  setup do
    @factory_light = factory_lights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factory_lights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factory_light" do
    assert_difference('FactoryLight.count') do
      post :create, factory_light: { brend: @factory_light.brend, delivery_time: @factory_light.delivery_time, factor: @factory_light.factor, minimum_order: @factory_light.minimum_order, regin: @factory_light.regin, table_specification: @factory_light.table_specification }
    end

    assert_redirected_to factory_light_path(assigns(:factory_light))
  end

  test "should show factory_light" do
    get :show, id: @factory_light
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factory_light
    assert_response :success
  end

  test "should update factory_light" do
    patch :update, id: @factory_light, factory_light: { brend: @factory_light.brend, delivery_time: @factory_light.delivery_time, factor: @factory_light.factor, minimum_order: @factory_light.minimum_order, regin: @factory_light.regin, table_specification: @factory_light.table_specification }
    assert_redirected_to factory_light_path(assigns(:factory_light))
  end

  test "should destroy factory_light" do
    assert_difference('FactoryLight.count', -1) do
      delete :destroy, id: @factory_light
    end

    assert_redirected_to factory_lights_path
  end
end

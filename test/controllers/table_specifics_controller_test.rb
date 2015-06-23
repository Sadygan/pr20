require 'test_helper'

class TableSpecificsControllerTest < ActionController::TestCase
  setup do
    @table_specific = table_specifics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_specifics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_specific" do
    assert_difference('TableSpecific.count') do
      post :create, table_specific: { description: @table_specific.description, factor: @table_specific.factor, factory: @table_specific.factory, factory_price: @table_specific.factory_price, factory_sum: @table_specific.factory_sum, finishing: @table_specific.finishing, model: @table_specific.model, number: @table_specific.number, price_euro: @table_specific.price_euro, size: @table_specific.size, specific_id: @table_specific.specific_id, sum_euro: @table_specific.sum_euro, v: @table_specific.v }
    end

    assert_redirected_to table_specific_path(assigns(:table_specific))
  end

  test "should show table_specific" do
    get :show, id: @table_specific
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table_specific
    assert_response :success
  end

  test "should update table_specific" do
    patch :update, id: @table_specific, table_specific: { description: @table_specific.description, factor: @table_specific.factor, factory: @table_specific.factory, factory_price: @table_specific.factory_price, factory_sum: @table_specific.factory_sum, finishing: @table_specific.finishing, model: @table_specific.model, number: @table_specific.number, price_euro: @table_specific.price_euro, size: @table_specific.size, specific_id: @table_specific.specific_id, sum_euro: @table_specific.sum_euro, v: @table_specific.v }
    assert_redirected_to table_specific_path(assigns(:table_specific))
  end

  test "should destroy table_specific" do
    assert_difference('TableSpecific.count', -1) do
      delete :destroy, id: @table_specific
    end

    assert_redirected_to table_specifics_path
  end
end

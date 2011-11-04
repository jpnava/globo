require 'test_helper'

class SaboresControllerTest < ActionController::TestCase
  setup do
    @sabor = sabores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sabores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sabor" do
    assert_difference('Sabor.count') do
      post :create, sabor: @sabor.attributes
    end

    assert_redirected_to sabor_path(assigns(:sabor))
  end

  test "should show sabor" do
    get :show, id: @sabor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sabor.to_param
    assert_response :success
  end

  test "should update sabor" do
    put :update, id: @sabor.to_param, sabor: @sabor.attributes
    assert_redirected_to sabor_path(assigns(:sabor))
  end

  test "should destroy sabor" do
    assert_difference('Sabor.count', -1) do
      delete :destroy, id: @sabor.to_param
    end

    assert_redirected_to sabores_path
  end
end

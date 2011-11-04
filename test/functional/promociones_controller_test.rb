require 'test_helper'

class PromocionesControllerTest < ActionController::TestCase
  setup do
    @promocion = promociones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promociones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promocion" do
    assert_difference('Promocion.count') do
      post :create, promocion: @promocion.attributes
    end

    assert_redirected_to promocion_path(assigns(:promocion))
  end

  test "should show promocion" do
    get :show, id: @promocion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promocion.to_param
    assert_response :success
  end

  test "should update promocion" do
    put :update, id: @promocion.to_param, promocion: @promocion.attributes
    assert_redirected_to promocion_path(assigns(:promocion))
  end

  test "should destroy promocion" do
    assert_difference('Promocion.count', -1) do
      delete :destroy, id: @promocion.to_param
    end

    assert_redirected_to promociones_path
  end
end

require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get Inicio" do
    get :Inicio
    assert_response :success
  end

  test "should get Historia" do
    get :Historia
    assert_response :success
  end

  test "should get Productos" do
    get :Productos
    assert_response :success
  end

  test "should get Sucursales" do
    get :Sucursales
    assert_response :success
  end

  test "should get Contacto" do
    get :Contacto
    assert_response :success
  end

end

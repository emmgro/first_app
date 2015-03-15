require 'test_helper'

class BicicletaControllerTest < ActionController::TestCase
  setup do
    @bicicletum = bicicleta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bicicleta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bicicletum" do
    assert_difference('Bicicletum.count') do
      post :create, bicicletum: { descripcion: @bicicletum.descripcion, marca: @bicicletum.marca, precio: @bicicletum.precio }
    end

    assert_redirected_to bicicletum_path(assigns(:bicicletum))
  end

  test "should show bicicletum" do
    get :show, id: @bicicletum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bicicletum
    assert_response :success
  end

  test "should update bicicletum" do
    patch :update, id: @bicicletum, bicicletum: { descripcion: @bicicletum.descripcion, marca: @bicicletum.marca, precio: @bicicletum.precio }
    assert_redirected_to bicicletum_path(assigns(:bicicletum))
  end

  test "should destroy bicicletum" do
    assert_difference('Bicicletum.count', -1) do
      delete :destroy, id: @bicicletum
    end

    assert_redirected_to bicicleta_path
  end
end

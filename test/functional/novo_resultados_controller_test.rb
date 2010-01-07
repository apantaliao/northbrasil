require 'test_helper'

class NovoResultadosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novo_resultados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novo_resultado" do
    assert_difference('NovoResultado.count') do
      post :create, :novo_resultado => { }
    end

    assert_redirected_to novo_resultado_path(assigns(:novo_resultado))
  end

  test "should show novo_resultado" do
    get :show, :id => novo_resultados(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => novo_resultados(:one).to_param
    assert_response :success
  end

  test "should update novo_resultado" do
    put :update, :id => novo_resultados(:one).to_param, :novo_resultado => { }
    assert_redirected_to novo_resultado_path(assigns(:novo_resultado))
  end

  test "should destroy novo_resultado" do
    assert_difference('NovoResultado.count', -1) do
      delete :destroy, :id => novo_resultados(:one).to_param
    end

    assert_redirected_to novo_resultados_path
  end
end

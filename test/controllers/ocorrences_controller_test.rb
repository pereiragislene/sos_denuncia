require 'test_helper'

class OcorrencesControllerTest < ActionController::TestCase
  setup do
    @ocorrence = ocorrences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ocorrences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocorrence" do
    assert_difference('Ocorrence.count') do
      post :create, ocorrence: { descricao: @ocorrence.descricao, endereco: @ocorrence.endereco, nome_contato: @ocorrence.nome_contato, nome_vitima: @ocorrence.nome_vitima, tel_contato: @ocorrence.tel_contato, tipo_ocorrencia: @ocorrence.tipo_ocorrencia }
    end

    assert_redirected_to ocorrence_path(assigns(:ocorrence))
  end

  test "should show ocorrence" do
    get :show, id: @ocorrence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ocorrence
    assert_response :success
  end

  test "should update ocorrence" do
    patch :update, id: @ocorrence, ocorrence: { descricao: @ocorrence.descricao, endereco: @ocorrence.endereco, nome_contato: @ocorrence.nome_contato, nome_vitima: @ocorrence.nome_vitima, tel_contato: @ocorrence.tel_contato, tipo_ocorrencia: @ocorrence.tipo_ocorrencia }
    assert_redirected_to ocorrence_path(assigns(:ocorrence))
  end

  test "should destroy ocorrence" do
    assert_difference('Ocorrence.count', -1) do
      delete :destroy, id: @ocorrence
    end

    assert_redirected_to ocorrences_path
  end
end

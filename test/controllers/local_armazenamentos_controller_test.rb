require "test_helper"

class LocalArmazenamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @local_armazenamento = local_armazenamentos(:one)
  end

  test "should get index" do
    get local_armazenamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_local_armazenamento_url
    assert_response :success
  end

  test "should create local_armazenamento" do
    assert_difference('LocalArmazenamento.count') do
      post local_armazenamentos_url, params: { local_armazenamento: { nome: @local_armazenamento.nome } }
    end

    assert_redirected_to local_armazenamento_url(LocalArmazenamento.last)
  end

  test "should show local_armazenamento" do
    get local_armazenamento_url(@local_armazenamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_local_armazenamento_url(@local_armazenamento)
    assert_response :success
  end

  test "should update local_armazenamento" do
    patch local_armazenamento_url(@local_armazenamento), params: { local_armazenamento: { nome: @local_armazenamento.nome } }
    assert_redirected_to local_armazenamento_url(@local_armazenamento)
  end

  test "should destroy local_armazenamento" do
    assert_difference('LocalArmazenamento.count', -1) do
      delete local_armazenamento_url(@local_armazenamento)
    end

    assert_redirected_to local_armazenamentos_url
  end
end

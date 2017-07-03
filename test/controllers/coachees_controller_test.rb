require 'test_helper'

class CoacheesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coachee = coachees(:one)
  end

  test "should get index" do
    get coachees_url, as: :json
    assert_response :success
  end

  test "should create coachee" do
    assert_difference('Coachee.count') do
      post coachees_url, params: { coachee: { idade: @coachee.idade, nome: @coachee.nome, objetivo: @coachee.objetivo, sexo: @coachee.sexo, telefone: @coachee.telefone } }, as: :json
    end

    assert_response 201
  end

  test "should show coachee" do
    get coachee_url(@coachee), as: :json
    assert_response :success
  end

  test "should update coachee" do
    patch coachee_url(@coachee), params: { coachee: { idade: @coachee.idade, nome: @coachee.nome, objetivo: @coachee.objetivo, sexo: @coachee.sexo, telefone: @coachee.telefone } }, as: :json
    assert_response 200
  end

  test "should destroy coachee" do
    assert_difference('Coachee.count', -1) do
      delete coachee_url(@coachee), as: :json
    end

    assert_response 204
  end
end

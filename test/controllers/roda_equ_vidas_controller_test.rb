require 'test_helper'

class RodaEquVidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roda_equ_vida = roda_equ_vidas(:one)
  end

  test "should get index" do
    get roda_equ_vidas_url, as: :json
    assert_response :success
  end

  test "should create roda_equ_vida" do
    assert_difference('RodaEquVida.count') do
      post roda_equ_vidas_url, params: { roda_equ_vida: { contribuicaoSocial: @roda_equ_vida.contribuicaoSocial, deseAmoroso: @roda_equ_vida.deseAmoroso, deseIntelectual: @roda_equ_vida.deseIntelectual, equiEmocional: @roda_equ_vida.equiEmocional, espiritualidade: @roda_equ_vida.espiritualidade, familia: @roda_equ_vida.familia, hobbiesDiversoes: @roda_equ_vida.hobbiesDiversoes, plenitudeFelicidade: @roda_equ_vida.plenitudeFelicidade, realizacaoProposito: @roda_equ_vida.realizacaoProposito, recursosFinanceiros: @roda_equ_vida.recursosFinanceiros, saude: @roda_equ_vida.saude, vidaSocial: @roda_equ_vida.vidaSocial } }, as: :json
    end

    assert_response 201
  end

  test "should show roda_equ_vida" do
    get roda_equ_vida_url(@roda_equ_vida), as: :json
    assert_response :success
  end

  test "should update roda_equ_vida" do
    patch roda_equ_vida_url(@roda_equ_vida), params: { roda_equ_vida: { contribuicaoSocial: @roda_equ_vida.contribuicaoSocial, deseAmoroso: @roda_equ_vida.deseAmoroso, deseIntelectual: @roda_equ_vida.deseIntelectual, equiEmocional: @roda_equ_vida.equiEmocional, espiritualidade: @roda_equ_vida.espiritualidade, familia: @roda_equ_vida.familia, hobbiesDiversoes: @roda_equ_vida.hobbiesDiversoes, plenitudeFelicidade: @roda_equ_vida.plenitudeFelicidade, realizacaoProposito: @roda_equ_vida.realizacaoProposito, recursosFinanceiros: @roda_equ_vida.recursosFinanceiros, saude: @roda_equ_vida.saude, vidaSocial: @roda_equ_vida.vidaSocial } }, as: :json
    assert_response 200
  end

  test "should destroy roda_equ_vida" do
    assert_difference('RodaEquVida.count', -1) do
      delete roda_equ_vida_url(@roda_equ_vida), as: :json
    end

    assert_response 204
  end
end

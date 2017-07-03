require 'test_helper'

class FerramentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ferramentum = ferramenta(:one)
  end

  test "should get index" do
    get ferramenta_url, as: :json
    assert_response :success
  end

  test "should create ferramentum" do
    assert_difference('Ferramentum.count') do
      post ferramenta_url, params: { ferramentum: { tipo: @ferramentum.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show ferramentum" do
    get ferramentum_url(@ferramentum), as: :json
    assert_response :success
  end

  test "should update ferramentum" do
    patch ferramentum_url(@ferramentum), params: { ferramentum: { tipo: @ferramentum.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy ferramentum" do
    assert_difference('Ferramentum.count', -1) do
      delete ferramentum_url(@ferramentum), as: :json
    end

    assert_response 204
  end
end

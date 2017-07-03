require 'test_helper'

class QuimicaPerformancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quimica_performance = quimica_performances(:one)
  end

  test "should get index" do
    get quimica_performances_url, as: :json
    assert_response :success
  end

  test "should create quimica_performance" do
    assert_difference('QuimicaPerformance.count') do
      post quimica_performances_url, params: { quimica_performance: { nome: @quimica_performance.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show quimica_performance" do
    get quimica_performance_url(@quimica_performance), as: :json
    assert_response :success
  end

  test "should update quimica_performance" do
    patch quimica_performance_url(@quimica_performance), params: { quimica_performance: { nome: @quimica_performance.nome } }, as: :json
    assert_response 200
  end

  test "should destroy quimica_performance" do
    assert_difference('QuimicaPerformance.count', -1) do
      delete quimica_performance_url(@quimica_performance), as: :json
    end

    assert_response 204
  end
end

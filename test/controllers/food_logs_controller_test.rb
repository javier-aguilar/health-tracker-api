require "test_helper"

class FoodLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_log = food_logs(:one)
  end

  test "should get index" do
    get food_logs_url, as: :json
    assert_response :success
  end

  test "should create food_log" do
    assert_difference("FoodLog.count") do
      post food_logs_url, params: { food_log: { calories: @food_log.calories, carbs: @food_log.carbs, fat: @food_log.fat, protein: @food_log.protein, user_id: @food_log.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show food_log" do
    get food_log_url(@food_log), as: :json
    assert_response :success
  end

  test "should update food_log" do
    patch food_log_url(@food_log), params: { food_log: { calories: @food_log.calories, carbs: @food_log.carbs, fat: @food_log.fat, protein: @food_log.protein, user_id: @food_log.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy food_log" do
    assert_difference("FoodLog.count", -1) do
      delete food_log_url(@food_log), as: :json
    end

    assert_response :no_content
  end
end

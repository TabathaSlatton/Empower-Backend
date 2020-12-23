require 'test_helper'

class GoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal = goals(:one)
  end

  test "should get index" do
    get goals_url, as: :json
    assert_response :success
  end

  test "should create goal" do
    assert_difference('Goal.count') do
      post goals_url, params: { goal: { category: @goal.category, completed: @goal.completed, name: @goal.name, point_value: @goal.point_value, user_id: @goal.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show goal" do
    get goal_url(@goal), as: :json
    assert_response :success
  end

  test "should update goal" do
    patch goal_url(@goal), params: { goal: { category: @goal.category, completed: @goal.completed, name: @goal.name, point_value: @goal.point_value, user_id: @goal.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy goal" do
    assert_difference('Goal.count', -1) do
      delete goal_url(@goal), as: :json
    end

    assert_response 204
  end
end

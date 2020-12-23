require 'test_helper'

class WishItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wish_item = wish_items(:one)
  end

  test "should get index" do
    get wish_items_url, as: :json
    assert_response :success
  end

  test "should create wish_item" do
    assert_difference('WishItem.count') do
      post wish_items_url, params: { wish_item: { product_id: @wish_item.product_id, user_id: @wish_item.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show wish_item" do
    get wish_item_url(@wish_item), as: :json
    assert_response :success
  end

  test "should update wish_item" do
    patch wish_item_url(@wish_item), params: { wish_item: { product_id: @wish_item.product_id, user_id: @wish_item.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy wish_item" do
    assert_difference('WishItem.count', -1) do
      delete wish_item_url(@wish_item), as: :json
    end

    assert_response 204
  end
end

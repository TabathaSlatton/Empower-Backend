require 'test_helper'

class FavoritePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_post = favorite_posts(:one)
  end

  test "should get index" do
    get favorite_posts_url, as: :json
    assert_response :success
  end

  test "should create favorite_post" do
    assert_difference('FavoritePost.count') do
      post favorite_posts_url, params: { favorite_post: { post_id: @favorite_post.post_id, user_id: @favorite_post.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show favorite_post" do
    get favorite_post_url(@favorite_post), as: :json
    assert_response :success
  end

  test "should update favorite_post" do
    patch favorite_post_url(@favorite_post), params: { favorite_post: { post_id: @favorite_post.post_id, user_id: @favorite_post.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy favorite_post" do
    assert_difference('FavoritePost.count', -1) do
      delete favorite_post_url(@favorite_post), as: :json
    end

    assert_response 204
  end
end

class FavoritePostsController < ApplicationController
  before_action :set_favorite_post, only: [:show, :update, :destroy]

  # GET /favorite_posts
  def index
    @favorite_posts = FavoritePost.all

    render json: @favorite_posts
  end

  # GET /favorite_posts/1
  def show
    render json: @favorite_post
  end

  # POST /favorite_posts
  def create
    @favorite_post = FavoritePost.new(favorite_post_params)

    if @favorite_post.save
      render json: @favorite_post, status: :created, location: @favorite_post
    else
      render json: @favorite_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_posts/1
  def update
    if @favorite_post.update(favorite_post_params)
      render json: @favorite_post
    else
      render json: @favorite_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_posts/1
  def destroy
    @favorite_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_post
      @favorite_post = FavoritePost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_post_params
      params.require(:favorite_post).permit(:user_id, :post_id)
    end
end

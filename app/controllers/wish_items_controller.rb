class WishItemsController < ApplicationController
  before_action :set_wish_item, only: [:show, :update, :destroy]

  # GET /wish_items
  def index
    @wish_items = WishItem.all

    render json: @wish_items
  end

  # GET /wish_items/1
  def show
    render json: @wish_item
  end

  # POST /wish_items
  def create
    @wish_item = WishItem.new(wish_item_params)

    if @wish_item.save
      render json: @wish_item, status: :created, location: @wish_item
    else
      render json: @wish_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wish_items/1
  def update
    if @wish_item.update(wish_item_params)
      render json: @wish_item
    else
      render json: @wish_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wish_items/1
  def destroy
    @wish_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish_item
      @wish_item = WishItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wish_item_params
      params.require(:wish_item).permit(:user_id, :product_id)
    end
end

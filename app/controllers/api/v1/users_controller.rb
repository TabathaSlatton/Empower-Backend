class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]


    # allows authenticated user to access profile information
    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    # signing up
    def create
      @user = User.create(user_params)
      if @user.valid?
        # passing encode_token a payload of user id
        @token = encode_token(user_id: @user.id)
        # using built-in rails status codes
        render json: { user: UserSerializer.new(@user), token: @token }, status: :created
      else
        render json: { error: user.errors.full_messages.to_sentence }, status: :not_acceptable
      end
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :password, :email, :profile_img_url, :first_name, :last_name, :point_wallet)
    end
end

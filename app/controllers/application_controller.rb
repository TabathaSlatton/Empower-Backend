class ApplicationController < ActionController::API
  before_action :authorized

  # STEP 1: Encode/Decode Tokens
  def encode_token(id)
    JWT.encode({user_id: id}, ENV['JWT_KEY'])
  end

  def get_auth_token
    request.headers["Authorization"]
  end

  def decode_token
    begin
      JWT.decode(get_auth_token, ENV["JWT_KEY"])[0]["user_id"]
    rescue
      nil
    end
  end

  # STEP 2: Authentication helper methods
  def session_user
      @user = User.find_by_id(decode_token)
  end

  def logged_in?
    !!session_user
  end

  # STEP 3: Authorization helper methods
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end



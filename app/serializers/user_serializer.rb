class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :profile_img_url, :first_name, :last_name, :point_wallet
end

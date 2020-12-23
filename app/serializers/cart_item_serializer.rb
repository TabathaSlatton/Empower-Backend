class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :completed, :completed_datetime
  has_one :user
  has_one :product
end

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :point_cost, :img_url, :name
end

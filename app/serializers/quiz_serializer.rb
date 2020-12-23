class QuizSerializer < ActiveModel::Serializer
  attributes :id, :point_value, :completed
  has_one :post
end

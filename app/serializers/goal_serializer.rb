class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name, :completed, :category, :point_value
  has_one :user
end

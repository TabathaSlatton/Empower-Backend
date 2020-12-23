class QuizQuestionSerializer < ActiveModel::Serializer
  attributes :id, :answer
  has_one :quiz
end

class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.references :post, null: false, foreign_key: true
      t.integer :point_value
      t.boolean :completed

      t.timestamps
    end
  end
end

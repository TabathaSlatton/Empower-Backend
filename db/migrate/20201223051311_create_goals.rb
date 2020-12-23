class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.boolean :completed
      t.string :category
      t.integer :point_value

      t.timestamps
    end
  end
end

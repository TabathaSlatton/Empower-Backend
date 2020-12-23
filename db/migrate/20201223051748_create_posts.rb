class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :category
      t.string :type
      t.datetime :time
      t.string :preview_img_url
      t.string :video_url
      t.string :content
      t.string :external_link

      t.timestamps
    end
  end
end

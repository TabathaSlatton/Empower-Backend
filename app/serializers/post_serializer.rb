class PostSerializer < ActiveModel::Serializer
  attributes :id, :category, :type, :time, :preview_img_url, :content, :video_url, :content, :external_link
end

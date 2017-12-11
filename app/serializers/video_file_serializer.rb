class VideoFileSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :channel_id, :image_src
end

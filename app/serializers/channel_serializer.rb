class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :video_files
end
